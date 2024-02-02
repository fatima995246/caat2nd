import 'package:caatsec/my_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
typedef Validator = String? Function(String?);
class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final bool obscureText;
  final IconData textIcon;

  final  Validator myValidator;
  CustomTextFormField({
    required this.controller,
    required this.hintText,
    required this.labelText,
    this.obscureText = false, required this.textIcon, required this.myValidator
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    return Container(
      width: screenWidth * 0.8,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          border: OutlineInputBorder( ),
          contentPadding: EdgeInsets.all(10),
          fillColor:MyTheme.greyColor, focusColor:MyTheme.greyColor,suffixIcon:Icon(textIcon )
        ),
        obscureText: obscureText, validator: myValidator,
      ),
    );
  }
}