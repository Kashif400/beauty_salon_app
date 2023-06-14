import 'package:beauty_salon_ui/res/appColor.dart';
import 'package:beauty_salon_ui/res/status_bar_color_change.dart';
import 'package:flutter/material.dart';

import '../Utils/round_button.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: StatusBarColor(
        statusBarVisible: true,
        statusBarColor: AppColor.backgroundColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Lowan Old Style',
                      fontWeight: FontWeight.w700),
                ),
                Center(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 3.0, color: AppColor.creamColor)),
                        child: Container(
                          width: 98,
                          height: 98,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(width: 3.0, color: Colors.white)),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('asset/profil.jpg'),
                          ),
                        ),
                      ),
                      Text(
                        'Rayna Carder',
                        style: TextStyle(
                            fontFamily: 'Lowan Old Style',
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                      Text('RaynaCarder@gmail.com'),
                      SizedBox(
                        height: 15,
                      ),
                      RoundButton(
                        onPressed: () {},
                        title: 'Edit Profile',
                        width: MediaQuery.of(context).size.width * .25,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'About',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Image.asset('asset/arrowf.png')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Career',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Image.asset('asset/arrowf.png')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pricing and Plannings',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Image.asset('asset/arrowf.png')
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
                Center(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Logout',
                        style: TextStyle(
                            color: AppColor.creamColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
