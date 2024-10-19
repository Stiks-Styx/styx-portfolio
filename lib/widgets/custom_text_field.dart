import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.maxLines = 1,
    this.hintText,
  });
  final TextEditingController? controller;
  final int maxLines;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: TextStyle(color: darkColor),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16),
        filled: true,
        fillColor: bodyTextColor,
        focusedBorder: _getInputBorder(),
        enabledBorder: _getInputBorder(),
        border: _getInputBorder(),
        hintText: hintText,
      ),
    );
  }

  OutlineInputBorder _getInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}
