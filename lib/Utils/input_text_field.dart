// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../res/appColor.dart';

class InputTextField extends StatelessWidget {
  TextEditingController? textController = TextEditingController();
  final String? hintText;
  final bool obscurePassword;
  dynamic inputType;

  InputTextField(
      {super.key,
      this.textController,
      this.hintText,
      this.obscurePassword = false,
      this.inputType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      keyboardType: inputType,
      obscureText: obscurePassword,
      cursorColor: Colors.grey,
      style: TextStyle(fontSize: 18),
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.grayColor)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide:
                  const BorderSide(width: 5, color: AppColor.grayColor)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.creamColor))),
    );
  }
}
