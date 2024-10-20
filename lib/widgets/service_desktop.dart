import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ServiceDesktop extends StatelessWidget {
  const ServiceDesktop({super.key, required this.onProjectsTap});
  final VoidCallback onProjectsTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: darkColor,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        height: 650,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  radius: percentRadiusDesktop,
                  lineWidth: percentWidthDesktop,
                  percent: csharpPercent,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('.../icons/csharp.png', height: 40),
                      SizedBox(height: 8),
                      Text(
                        'C#',
                        style: TextStyle(
                          color: bodyTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                  progressColor: primaryColor,
                  backgroundColor: secondaryColor,
                ),
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  radius: percentRadiusDesktop,
                  lineWidth: percentWidthDesktop,
                  percent: pythonPercent,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('.../icons/python.png', height: 40),
                      SizedBox(height: 8),
                      Text(
                        'Python',
                        style: TextStyle(
                          color: bodyTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                  progressColor: primaryColor,
                  backgroundColor: secondaryColor,
                ),
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  radius: percentRadiusDesktop,
                  lineWidth: percentWidthDesktop,
                  percent: dartPercent,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('.../icons/dart.png', height: 40),
                      SizedBox(height: 8),
                      Text(
                        'Dart',
                        style: TextStyle(
                          color: bodyTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                  progressColor: primaryColor,
                  backgroundColor: secondaryColor,
                ),
              ],
            ),
            SizedBox(width: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  radius: percentRadiusDesktop,
                  lineWidth: percentWidthDesktop,
                  percent: flutterPercent,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('.../icons/flutter.png', height: 40),
                      SizedBox(height: 8),
                      Text(
                        'Flutter',
                        style: TextStyle(
                          color: bodyTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                  progressColor: primaryColor,
                  backgroundColor: secondaryColor,
                ),
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  radius: percentRadiusDesktop,
                  lineWidth: percentWidthDesktop,
                  percent: blenderPercent,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('.../icons/blender.png', height: 40),
                      SizedBox(height: 8),
                      Text(
                        'Blender',
                        style: TextStyle(
                          color: bodyTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                  progressColor: primaryColor,
                  backgroundColor: secondaryColor,
                ),
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  radius: percentRadiusDesktop,
                  lineWidth: percentWidthDesktop,
                  percent: unityPercent,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('.../icons/unity.png', height: 40),
                      SizedBox(height: 8),
                      Text(
                        'Unity',
                        style: TextStyle(
                          color: bodyTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                  progressColor: primaryColor,
                  backgroundColor: secondaryColor,
                ),
              ],
            ),
            SizedBox(width: 30),
            Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Skills',
                          style: TextStyle(
                              color: bodyTextColor,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'I am a software developer with a passion for creating innovative solutions to complex problems. I have experience in a variety of programming languages and technologies, and I am always looking for new challenges to tackle.',
                          style: TextStyle(color: bodyTextColor, fontSize: 22),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: SizedBox(
                        width: 250,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: onProjectsTap,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            foregroundColor: bgColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          child: const Text(
                            'See My Projects',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
