// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../res/appColor.dart';

class UpcommingCard extends StatelessWidget {
  String? place, date, name;
  UpcommingCard({super.key, this.name, this.place, this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .75,
      height: MediaQuery.of(context).size.height * .12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Center(child: Image.asset('asset/cm.png'))),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  name.toString(),
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w700),
                ),
                Text(
                  place.toString(),
                  style: const TextStyle(
                      color: AppColor.creamColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  date.toString(),
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
