import 'package:flutter/material.dart';
import 'package:portfolio/constants/nav_items.dart';
import 'package:portfolio/constants/constants.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: secondaryColor,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30.00),
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10.00,
                top: 20.00,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close),
                color: bodyTextColor,
              ),
            ),
          ),
          const SizedBox(height: 20.00),
          for (int i = 0; i < navTitles.length; i++)
            ListTile(
              titleTextStyle: const TextStyle(
                color: bodyTextColor,
                fontSize: 16.00,
                fontWeight: FontWeight.w600,
              ),
              onTap: () {},
              title: Text(navTitles[i]),
              leading: Icon(navIcons[i]),
              iconColor: bodyTextColor,
            ),
        ],
      ),
    );
  }
}
