import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: MediaQuery.of(context).size.height / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hello, I am\nJohn Alex B. Alcazar',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: bodyTextColor,
                ),
                textAlign: TextAlign.left,
              ),
              const Text(
                'A Computer Science student \nat the University of LSPU',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                  color: secondaryTextColor,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    foregroundColor: bgColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: const Text('Contact me'),
                ),
              )
            ],
          ),
          Image.asset(
            'images/styx_avatar.png',
            width: MediaQuery.of(context).size.width * .25,
          ),
        ],
      ),
    );
  }
}
