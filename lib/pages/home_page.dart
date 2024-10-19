import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/widgets/header_mobile.dart';
import 'package:portfolio/widgets/drawer_mobile.dart';
import 'package:portfolio/widgets/header_desktop.dart';
import 'package:portfolio/widgets/main_mobile.dart';
import 'package:portfolio/widgets/main_desktop.dart';
import 'package:portfolio/widgets/service_desktop.dart';
import 'package:portfolio/widgets/service_mobile.dart';
import 'package:portfolio/widgets/projects_desktop.dart';
import 'package:portfolio/widgets/contact_desktop.dart';
import 'package:portfolio/widgets/contact_mobile.dart';
import 'package:portfolio/widgets/footer_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navKeys = List.generate(4, (index) => GlobalKey());
  bool isHeaderVisible = true;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    scrollController.removeListener(_scrollListener);
    scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      if (isHeaderVisible) {
        setState(() {
          isHeaderVisible = false;
        });
      }
    } else if (scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      if (!isHeaderVisible) {
        setState(() {
          isHeaderVisible = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: bgColor,
          endDrawer: Responsive.shouldShowMobileDrawer(context)
              ? DrawerMobile(onNavItemTap: (int navIndex) {
                  scaffoldKey.currentState?.closeEndDrawer();
                  scrollToSection(navIndex);
                })
              : null,
          body: GestureDetector(
            onTap: () {}, // Add an empty onTap to catch any stray taps
            behavior: HitTestBehavior.translucent,
            child: Stack(
              children: [
                SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      SizedBox(height: 80, key: navKeys[0]),
                      if (Responsive.shouldShowDesktopHeader(context))
                        MainDesktop(onContactTap: () {
                          scrollToSection(
                              3); // Assuming Contact is the 4th section (index 3)
                        })
                      else
                        MainMobile(onContactTap: () {
                          scrollToSection(
                              3); // Assuming Contact is the 4th section (index 3)
                        }),
                      SizedBox(key: navKeys[1]),
                      if (Responsive.shouldShowDesktopHeader(context))
                        ServiceDesktop(onProjectsTap: () {
                          scrollToSection(
                              2); // Assuming Projects is the 3rd section (index 2)
                        })
                      else
                        ServiceMobile(onProjectsTap: () {
                          scrollToSection(
                              2); // Assuming Projects is the 3rd section (index 2)
                        }),
                      SizedBox(key: navKeys[2]),
                      const ProjectsDesktop(), //PROJECTS
                      SizedBox(key: navKeys[3]),
                      if (Responsive.shouldShowDesktopHeader(context))
                        const ContactDesktop() //CONTACT
                      else
                        const ContactMobile(), //CONTACT
                      const FooterDesktop(), //FOOTER
                    ],
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 200),
                  top: isHeaderVisible
                      ? 0
                      : -80, // Adjust -80 based on your header size
                  left: 0,
                  right: 0,
                  child: Responsive.shouldShowDesktopHeader(context)
                      ? HeaderDesktop(onNavMenuTap: scrollToSection)
                      : HeaderMobile(
                          onLogoTap: () {},
                          onMenuTap: () {
                            scaffoldKey.currentState?.openEndDrawer();
                          },
                        ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      // open footer
      return;
    }
    final key = navKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
