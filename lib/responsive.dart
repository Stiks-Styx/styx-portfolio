import 'package:flutter/material.dart';

// We will modify it once we have our final design

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  // Screen sizes
  static const int mobileBreakpoint = 500;
  static const int tabletBreakpoint = 860;

  // Screen size checks
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobileBreakpoint;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= mobileBreakpoint &&
      MediaQuery.of(context).size.width < tabletBreakpoint;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= tabletBreakpoint;

  // Responsive component checks
  static bool shouldShowMobileDrawer(BuildContext context) =>
      MediaQuery.of(context).size.width < tabletBreakpoint;

  static bool shouldShowMobileHeader(BuildContext context) =>
      MediaQuery.of(context).size.width < tabletBreakpoint;

  static bool shouldShowDesktopHeader(BuildContext context) =>
      MediaQuery.of(context).size.width >= tabletBreakpoint;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width >= tabletBreakpoint) {
      return desktop;
    } else if (size.width >= mobileBreakpoint && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}
