import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:endustriyel_app/screens/login/components/text_field_container.dart';


class RoundedInputField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final IconData? suffixIcon;
  const RoundedInputField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.onChanged,
    this.obscureText = false,
    this.suffixIcon
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
          icon: Icon(icon),

          suffixIcon:suffixIcon != null ? Icon(suffixIcon): null,

          hintText: hintText,
          border: InputBorder.none),
          
      obscureText: obscureText,
    ));
  }
}