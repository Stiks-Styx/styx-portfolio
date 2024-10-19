import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key, required this.onContactTap});
  final VoidCallback onContactTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height / 1.5,
      constraints: const BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello, I am',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: bodyTextColor,
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'John Alex B. Alcazar',
                          textStyle: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: bodyTextColor,
                          ),
                          speed: const Duration(milliseconds: 100),
                        ),
                      ],
                      isRepeatingAnimation: false,
                    ),
                  ),
                  const Text(
                    'A Computer Science student\nat the University of',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: secondaryTextColor,
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Laguna State Polytechnic University - San Pablo City',
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                            color: secondaryTextColor,
                          ),
                          speed: const Duration(milliseconds: 100),
                        ),
                      ],
                      isRepeatingAnimation: true,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: onContactTap,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        foregroundColor: bgColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: const Text('Contact me',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
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
                  '.../images/styx_avatar.png',
                  width: MediaQuery.of(context).size.width * .25,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
