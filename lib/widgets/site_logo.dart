import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Text(
        "S T Y X",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationColor: primaryColor,
          color: primaryColor,
        ),
      ),
    );
  }
}
