import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/widgets/custom_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:js' as js;

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: darkColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Get in touch',
            style: TextStyle(
              color: bodyTextColor,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Row(
              children: [
                Flexible(
                  child: CustomTextField(
                    hintText: 'Name',
                  ),
                ),
                const SizedBox(width: 30),
                Flexible(
                  child: CustomTextField(
                    hintText: 'Email (optional)',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: CustomTextField(
              hintText: 'Your Message',
              maxLines: 20,
            ),
          ),
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Center(
              child: SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    foregroundColor: bgColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: const Text('Send Message',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: const Divider(
              color: bodyTextColor,
              height: 1,
            ),
          ),
          const SizedBox(height: 15),
          Wrap(
            children: [
              InkWell(
                onTap: () {
                  js.context
                      .callMethod('open', ['https://github.com/Stiks-Styx']);
                },
                child: SvgPicture.asset(
                  '.../icons/github.svg',
                  color: bodyTextColor,
                  height: 30,
                ),
              ),
              const SizedBox(width: 20),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [
                    'https://www.linkedin.com/in/john-alex-alcazar-248b5a32a/'
                  ]);
                },
                child: SvgPicture.asset(
                  '.../icons/linkedin.svg',
                  color: bodyTextColor,
                  height: 30,
                ),
              ),
              const SizedBox(width: 20),
              InkWell(
                onTap: () {
                  js.context.callMethod('open',
                      ['https://discord.com/users/1087289463362834496']);
                },
                child: SvgPicture.asset(
                  '.../icons/discord.svg',
                  color: bodyTextColor,
                  height: 30,
                ),
              ),
              const SizedBox(width: 20),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [
                    'https://www.facebook.com/profile.php?id=100093581453449'
                  ]);
                },
                child: SvgPicture.asset(
                  '.../icons/facebook.svg',
                  color: bodyTextColor,
                  height: 30,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
