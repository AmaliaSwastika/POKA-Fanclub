import 'package:flutter/material.dart';
import 'package:code_competence_2/theme/theme_color.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final String hintText;
  final bool? message;
  final TextEditingController controller;

  const TextFieldWidget({
    super.key,
    required this.label,
    required this.hintText,
    this.message,
    required this.controller, required TextStyle style});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: const OutlineInputBorder(),
        fillColor: ThemeColor().blackColor,
        focusedBorder: OutlineInputBorder(
          borderSide:
          BorderSide(
            width: 1, 
            color: ThemeColor().blackColor
            )
          ),
      ),
      maxLines: message == true ? 5 : 1,
    );
  }
}