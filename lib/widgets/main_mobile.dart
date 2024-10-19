import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key, required this.onContactTap});
  final VoidCallback onContactTap;

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black,
                    Colors.transparent
                  ],
                ).createShader(bounds);
              },
              blendMode: BlendMode.dstIn,
              child: Image.asset(
                'assets/images/styx_avatar.png',
                width: MediaQuery.of(context).size.width * .5,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Hello, I am',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
              color: bodyTextColor,
            ),
          ),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'John Alex B. Alcazar',
                textStyle: const TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: bodyTextColor,
                ),
                speed: const Duration(milliseconds: 100),
              ),
            ],
            isRepeatingAnimation: false,
          ),
          const SizedBox(height: 10),
          const Text(
            'A Computer Science student',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w100,
              color: secondaryTextColor,
            ),
          ),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'at the University of LSPU-SPCC',
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w100,
                  color: secondaryTextColor,
                ),
                speed: const Duration(milliseconds: 100),
              ),
            ],
            isRepeatingAnimation: false,
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 250,
            child: ElevatedButton(
              onPressed: onContactTap,
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
