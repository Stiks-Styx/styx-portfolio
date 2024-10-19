import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/widgets/header_mobile.dart';
import 'package:portfolio/widgets/drawer_mobile.dart';
import 'package:portfolio/widgets/header_desktop.dart';
import 'package:portfolio/widgets/main_mobile.dart';
import 'package:portfolio/widgets/main_desktop.dart';
import 'package:portfolio/widgets/service_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: bgColor,
          endDrawer: Responsive.shouldShowMobileDrawer(context)
              ? const DrawerMobile()
              : null,
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              if (Responsive.shouldShowDesktopHeader(context))
                const HeaderDesktop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              if (Responsive.shouldShowDesktopHeader(context))
                const MainDesktop()
              else
                const MainMobile(), //HOME
              const ServiceDesktop(), //about
              Container(
                height: 650,
                width: double.maxFinite,
                color: darkColor,
              ), //services
              Container(
                height: 650,
                width: double.maxFinite,
              ), //projects
              Container(
                height: 650,
                width: double.maxFinite,
                color: darkColor,
              ), //contact
              Container(
                height: 650,
                width: double.maxFinite,
              ), //footer
            ],
          ),
        );
      },
    );
  }
}
