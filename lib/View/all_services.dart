import 'package:beauty_salon_ui/res/appColor.dart';
import 'package:beauty_salon_ui/res/status_bar_color_change.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Utils/our_services_card.dart';

class AllServices extends StatefulWidget {
  const AllServices({super.key});

  @override
  State<AllServices> createState() => _AllServicesState();
}

class _AllServicesState extends State<AllServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: StatusBarColor(
        statusBarVisible: true,
        statusBarColor: AppColor.backgroundColor,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(7),
                child: Row(
                  children: [
                    Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: AppColor.grayColor),
                        child: const Center(
                          child: FaIcon(
                            FontAwesomeIcons.arrowLeftLong,
                            color: Colors.black,
                            size: 20,
                          ),
                        )),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text(
                      'All Services',
                      style: TextStyle(
                          fontFamily: 'Lowan Old Style', fontSize: 20),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  padding: const EdgeInsets.all(7),
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  children: [
                    ServiceCard(
                      title: 'Nails',
                      image: 'asset/nailsl.png',
                      iconH: 58,
                      iconW: 64,
                      fontSized: 22,
                    ),
                    ServiceCard(
                        title: 'Hair',
                        image: 'asset/hairl.png',
                        iconH: 58,
                        iconW: 64,
                        fontSized: 22),
                    ServiceCard(
                        title: 'Facial',
                        fontSized: 22,
                        image: 'asset/faciall.png',
                        iconH: 58,
                        iconW: 64),
                    ServiceCard(
                        title: 'massage',
                        fontSized: 22,
                        image: 'asset/massagel.png',
                        iconH: 58,
                        iconW: 64),
                    ServiceCard(
                        title: 'Waxing',
                        fontSized: 22,
                        image: 'asset/waxingl.png',
                        iconH: 58,
                        iconW: 64),
                    ServiceCard(
                        title: 'NUltralucious\n7D hifu',
                        fontSized: 22,
                        image: 'asset/Facialp.png',
                        iconH: 58,
                        iconW: 64),
                    ServiceCard(
                        title: 'Lucious slim RF\ncavitation',
                        fontSized: 22,
                        image: 'asset/Dryer.png',
                        iconH: 58,
                        iconW: 64),
                    ServiceCard(
                        title: 'massage',
                        image: 'asset/massagel.png',
                        fontSized: 22,
                        iconH: 58,
                        iconW: 64),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
