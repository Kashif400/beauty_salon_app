import 'package:beauty_salon_ui/res/appColor.dart';
import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final String title, image;
  final double iconH, iconW;
  final double fontSized;
  const ServiceCard(
      {super.key,
      required this.title,
      required this.image,
      required this.iconH,
      required this.iconW,
      required this.fontSized});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      height: 97,
      width: 89,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: iconH,
            width: iconW,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColor.creamColor,
              fontSize: fontSized,
            ),
          )
        ],
      ),
    ));
  }
}
