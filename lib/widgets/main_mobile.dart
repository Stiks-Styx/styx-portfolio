import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: 650,
      constraints: BoxConstraints(
        minHeight: 560,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                colors: [Colors.transparent, Colors.black, Colors.transparent],
              ).createShader(bounds);
            },
            blendMode: BlendMode.dstIn,
            child: Image.asset(
              'images/styx_avatar.png',
              width: MediaQuery.of(context).size.width * .5,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Hello, I am\nJohn Alex B. Alcazar',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
              color: bodyTextColor,
            ),
            textAlign: TextAlign.left,
          ),
          const Text(
            'A Computer Science student \nat the University of LSPU',
            style: TextStyle(
              fontSize: 15,
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
          ),
        ],
      ),
    );
  }
}
