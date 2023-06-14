// ignore_for_file: must_be_immutable

import 'package:beauty_salon_ui/res/appColor.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool loading;
  String? title;
  double? width;
  RoundButton(
      {super.key,
      required this.onPressed,
      this.title,
      this.loading = false,
      this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 40,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: AppColor.creamColor),
        child: Center(
            child: loading
                ? const CircularProgressIndicator(
                    color: Colors.white,
                  )
                : Text(
                    title.toString(),
                    style: const TextStyle(color: Colors.white),
                  )),
      ),
    );
  }
}
