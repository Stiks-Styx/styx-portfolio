import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ServiceMobile extends StatelessWidget {
  const ServiceMobile({super.key, required this.onProjectsTap});
  final VoidCallback onProjectsTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 750,
      color: darkColor,
      padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  radius: percentRadiusMobile,
                  lineWidth: percentWidthMobile,
                  percent: csharpPercent,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/csharp.png', height: 30),
                      SizedBox(height: 5),
                      Text('C#',
                          style: TextStyle(
                              color: bodyTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w200)),
                    ],
                  ),
                  progressColor: primaryColor,
                  backgroundColor: secondaryColor,
                ),
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  radius: percentRadiusMobile,
                  lineWidth: percentWidthMobile,
                  percent: pythonPercent,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/python.png', height: 30),
                      SizedBox(height: 5),
                      Text('Python',
                          style: TextStyle(
                              color: bodyTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w200)),
                    ],
                  ),
                  progressColor: primaryColor,
                  backgroundColor: secondaryColor,
                ),
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  radius: percentRadiusMobile,
                  lineWidth: percentWidthMobile,
                  percent: dartPercent,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/dart.png', height: 30),
                      SizedBox(height: 5),
                      Text('Dart',
                          style: TextStyle(
                              color: bodyTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w200)),
                    ],
                  ),
                  progressColor: primaryColor,
                  backgroundColor: secondaryColor,
                ),
              ],
            ),
            SizedBox(width: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  radius: percentRadiusMobile,
                  lineWidth: percentWidthMobile,
                  percent: flutterPercent,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/flutter.png', height: 30),
                      SizedBox(height: 5),
                      Text('Flutter',
                          style: TextStyle(
                              color: bodyTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w200)),
                    ],
                  ),
                  progressColor: primaryColor,
                  backgroundColor: secondaryColor,
                ),
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  radius: percentRadiusMobile,
                  lineWidth: percentWidthMobile,
                  percent: blenderPercent,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/blender.png', height: 30),
                      SizedBox(height: 5),
                      Text('Blender',
                          style: TextStyle(
                              color: bodyTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w200)),
                    ],
                  ),
                  progressColor: primaryColor,
                  backgroundColor: secondaryColor,
                ),
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  radius: percentRadiusMobile,
                  lineWidth: percentWidthMobile,
                  percent: unityPercent,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/unity.png', height: 30),
                      SizedBox(height: 5),
                      Text('Unity',
                          style: TextStyle(
                              color: bodyTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w200)),
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
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                      'Skills',
                      style: TextStyle(
                          color: bodyTextColor,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'I am a software developer with a passion for creating innovative solutions to complex problems. I have experience in a variety of programming languages and technologies, and I am always looking for new challenges to tackle.',
                      style: TextStyle(color: bodyTextColor, fontSize: 22),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 20),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: SizedBox(
                        width: 200,
                        height: 25,
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
