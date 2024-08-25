import 'package:flutter/material.dart';

import 'constants.dart';

class CustomTextFormField extends StatelessWidget {
  final IconData prefixIcon;
  final String hitText;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final bool isObscure;
  final String obscuringCharacter;
  const CustomTextFormField({
    super.key,
    required this.prefixIcon,
    required this.hitText,
    required this.controller,
    this.suffixIcon,
    required this.isObscure,
    required this.obscuringCharacter
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      obscureText: isObscure,
      obscuringCharacter: "*",
      controller: controller,
      keyboardType: TextInputType.name,
      style: TextStyle(
          color: Constants.kPrimaryColor, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
          color: Constants.kPrimaryColor,
        ),
        suffixIcon: suffixIcon,
        hintText: hitText,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        labelStyle: TextStyle(
          color: Constants.kPrimaryColor,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: constBorderSide(),
        ),
        border: UnderlineInputBorder(
          borderSide: constBorderSide(),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: constBorderSide(),
        ),
      ),
    );
  }

  BorderSide constBorderSide() {
    return BorderSide(
      color: Constants.kPrimaryColor,
      width: 2,
    );
  }
}
