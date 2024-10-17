import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/widgets/header_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          HeaderDesktop(),
          Container(
            height: 650,
            width: double.maxFinite,
          ), //about
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
  }
}
