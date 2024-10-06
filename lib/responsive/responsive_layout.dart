import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget deskBody;

  ResponsiveLayout({
    required this.mobileBody,
    required this.deskBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return mobileBody;
          } else {
            return deskBody;
          }
        }
    );
  }
}
