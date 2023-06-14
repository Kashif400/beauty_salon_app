// ignore_for_file: sized_box_for_whitespace

import 'package:beauty_salon_ui/res/appColor.dart';
import 'package:flutter/material.dart';

class OfferCart extends StatefulWidget {
  const OfferCart({super.key});

  @override
  State<OfferCart> createState() => _OfferCartState();
}

class _OfferCartState extends State<OfferCart> {
  @override
  Widget build(BuildContext context) {
    // final hight = MediaQuery.of(context).size.height * 1;
    // final width = MediaQuery.of(context).size.height * 1;
    return Container(
        width: double.maxFinite,
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColor.brownColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Upto 50%',
                    style: TextStyle(
                        fontFamily: 'Lowan Old Style',
                        color: AppColor.creamColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Look more beautiful and\nSave more discount.',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Lowan Old Style',
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 32,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            color: AppColor.creamColor),
                        child: const Center(
                            child: Text(
                          'Get offer now!',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w700),
                        ))),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Stack(alignment: Alignment.bottomRight, children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .3,
                    width: MediaQuery.of(context).size.width * .3,
                    margin: const EdgeInsets.only(right: 14, bottom: 16),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: AppColor.creamColor),
                  ),
                  Image.asset(
                    'asset/picture.png',
                    height: 108,
                    width: 136,
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}
