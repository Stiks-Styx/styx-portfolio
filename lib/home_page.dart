import 'package:flutter/material.dart';
import 'package:portfolio/responsive/desk_body.dart';
import 'package:portfolio/responsive/mobile_body.dart';
import 'package:portfolio/responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: const MyMobileBody(),
        deskBody: const MyDeskBody(),
      ),
    );
  }
}
