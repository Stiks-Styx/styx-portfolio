import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ServiceDesktop extends StatelessWidget {
  const ServiceDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      width: double.maxFinite,
      color: Colors.red,
      child: Row(
        children: [
          Column(
            children: [
              CircularPercentIndicator(
                radius: 100,
                lineWidth: 10,
                percent: csharpPercent,
                circularStrokeCap: CircularStrokeCap.round,
                center: const Text('C#'),
                progressColor: primaryColor,
                backgroundColor: darkColor,
              ),
              CircularPercentIndicator(
                radius: 100,
                lineWidth: 10,
                percent: pythonPercent,
                circularStrokeCap: CircularStrokeCap.round,
                center: const Text('Python'),
                progressColor: primaryColor,
                backgroundColor: darkColor,
              ),
              CircularPercentIndicator(
                radius: 100,
                lineWidth: 10,
                percent: dartPercent,
                circularStrokeCap: CircularStrokeCap.round,
                center: const Text('Dart'),
                progressColor: primaryColor,
                backgroundColor: darkColor,
              ),
            ],
          ),
          Column(
            children: [
              CircularPercentIndicator(
                radius: 100,
                lineWidth: 10,
                percent: arduinoPercent,
                circularStrokeCap: CircularStrokeCap.round,
                center: const Text('Arduino'),
                progressColor: primaryColor,
                backgroundColor: darkColor,
              ),
              CircularPercentIndicator(
                radius: 100,
                lineWidth: 10,
                percent: blenderPercent,
                circularStrokeCap: CircularStrokeCap.round,
                center: const Text('Blender'),
                progressColor: primaryColor,
                backgroundColor: darkColor,
              ),
              CircularPercentIndicator(
                radius: 100,
                lineWidth: 10,
                percent: unityPercent,
                circularStrokeCap: CircularStrokeCap.round,
                center: const Text('Unity'),
                progressColor: primaryColor,
                backgroundColor: darkColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
