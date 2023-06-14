import 'package:beauty_salon_ui/res/appColor.dart';
import 'package:beauty_salon_ui/res/status_bar_color_change.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Utils/featured_services.dart';
import '../Utils/header.dart';
import '../Utils/offer_cart.dart';
import '../Utils/our_services.dart';
import '../Utils/upcomming_booking.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const StatusBarColor(
      statusBarColor: AppColor.backgroundColor,
      statusBarVisible: true,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(),
          backgroundColor: AppColor.backgroundColor,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header(),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Exclusive Offer',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  OfferCart(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Our Services',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700)),
                      Row(
                        children: [
                          Text(
                            'See All ',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          FaIcon(
                            FontAwesomeIcons.arrowRightLong,
                            size: 12,
                            color: Colors.grey,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Services(),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Featured Services',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  FeaturedService(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Upcomming Bookings',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700)),
                      Row(
                        children: [
                          Text(
                            'All Bookings ',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          FaIcon(
                            FontAwesomeIcons.arrowRightLong,
                            size: 12,
                            color: Colors.grey,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  UpcommingBooking(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
