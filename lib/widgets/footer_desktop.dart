import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class FooterDesktop extends StatelessWidget {
  const FooterDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      color: footerColor,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('John Alex B. Alcazar',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: bodyTextColor)),
              Text('BSCS - 1A',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: bodyTextColor)),
            ],
          ),
          const Spacer(),
          const Text(
              '© Copyright John Alex B. Alcazar. \nAll Rights Reserved 2023-2024.',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: bodyTextColor)),
        ],
      ),
    );
  }
}
