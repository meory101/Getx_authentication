import 'package:authentication/theme/colors.dart';
import 'package:authentication/theme/fonts.dart';
import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final String hint;
  final Widget prefix;
  final TextEditingController controller;
  TextForm({required this.hint, required this.prefix,required this.controller});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Appcolors.maincolor,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppFonts.greyfont,
        prefixIcon: prefix,
        prefixIconColor: Appcolors.maincolor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Appcolors.maincolor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Appcolors.maincolor),
        ),
      ),
    );
  }
}
