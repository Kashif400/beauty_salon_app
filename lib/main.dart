import 'package:beauty_salon_ui/View/calander.dart';
import 'package:beauty_salon_ui/res/appColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'View/splash_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      statusBarColor: AppColor.backgroundColor,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beauty Salon',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorSchemeSeed: AppColor.backgroundColor,
        fontFamily: 'Urbanist',
      ),
      // home: const SplashView(),
      home: CalenderScreen(),
      // home: BottomNavigatorView(),
    );
  }
}
