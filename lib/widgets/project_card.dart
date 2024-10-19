import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/constants.dart';
import '../utils/projects_utils.dart';

import 'dart:js' as js;

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.project,
  });
  final ProjectsUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 260,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            project.projectImage,
            height: 140,
            width: 260,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.projectName,
              style: TextStyle(
                color: bodyTextColor,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.projectDescription,
              style: TextStyle(
                color: bodyTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          const Spacer(),
          Container(
            color: darkColor,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                Text(
                  'Available on: ',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                const Spacer(),
                if (project.projectDownloadLink != null)
                  InkWell(
                    onTap: () {
                      // Add download functionality here
                    },
                    child: SvgPicture.asset(
                      '.../icons/download.svg',
                      height: 20,
                      width: 20,
                      color: bodyTextColor,
                    ),
                  ),
                SizedBox(width: 10), // Add some spacing between icons
                if (project.projectGithubLink != null)
                  InkWell(
                    onTap: () {
                      js.context
                          .callMethod('open', [project.projectGithubLink]);
                    },
                    child: SvgPicture.asset(
                      '.../icons/github.svg',
                      height: 20,
                      width: 20,
                      color: bodyTextColor,
                    ),
                  ),
                if (project.andriodLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod('open', [project.andriodLink]);
                    },
                    child: SvgPicture.asset(
                      '.../icons/android.svg',
                      height: 20,
                      width: 20,
                      color: bodyTextColor,
                    ),
                  ),
                if (project.iosLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod('open', [project.iosLink]);
                    },
                    child: SvgPicture.asset(
                      '.../icons/ios.svg',
                      height: 20,
                      width: 20,
                      color: bodyTextColor,
                    ),
                  ),
                if (project.webLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod('open', [project.webLink]);
                    },
                    child: SvgPicture.asset(
                      '.../icons/web.svg',
                      height: 20,
                      width: 20,
                      color: bodyTextColor,
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
