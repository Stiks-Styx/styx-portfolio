import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../utils/projects_utils.dart';
import 'project_card.dart';

class ProjectsDesktop extends StatelessWidget {
  const ProjectsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: TextStyle(
              color: bodyTextColor,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Here are some of my projects',
            style: TextStyle(
              color: bodyTextColor,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Hobby Projects',
            style: TextStyle(
              color: bodyTextColor,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < hobbyProjects.length; i++)
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: ProjectCardWidget(
                      project: hobbyProjects[i],
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            'School Projects',
            style: TextStyle(
              color: bodyTextColor,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < schoolProjects.length; i++)
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: ProjectCardWidget(
                      project: schoolProjects[i],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
