import 'dart:async';

import 'package:beauty_salon_ui/View/loginView.dart';
import 'package:beauty_salon_ui/res/status_bar_color_change.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return StatusBarColor(
        statusBarVisible: false,
        child: Scaffold(
          body: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              Center(
                child: Image.asset(
                  'asset/logo.jpg',
                  width: 100,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Lucious',
                style: TextStyle(fontFamily: 'Lowan Old Style', fontSize: 40),
              ),
              const Text(
                'Beauty Salon',
                style: TextStyle(
                    fontFamily: 'Urbanist', fontSize: 14, letterSpacing: 5),
              )
            ],
          ),
        ));
  }
}
