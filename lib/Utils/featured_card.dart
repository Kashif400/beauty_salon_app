import 'package:flutter/material.dart';

import '../res/appColor.dart';

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Container(
        width: MediaQuery.of(context).size.width * .75,
        height: MediaQuery.of(context).size.height * .13,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Row(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.asset(
                'asset/classicp.png',
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  'Classic Pedicure',
                  style: TextStyle(fontSize: 16, color: AppColor.creamColor),
                ),
                const SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '45 min  59 AED',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    Image.asset(
                      'asset/arrowf.png',
                      color: AppColor.creamColor,
                    )
                  ],
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
