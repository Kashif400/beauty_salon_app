import 'package:beauty_salon_ui/View/bottom_navigator_bar.dart';
import 'package:beauty_salon_ui/View/signupView.dart';
import 'package:beauty_salon_ui/res/appColor.dart';
import 'package:beauty_salon_ui/res/status_bar_color_change.dart';
import 'package:flutter/material.dart';

import '../Utils/input_text_field.dart';
import '../Utils/round_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return StatusBarColor(
      statusBarVisible: true,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.backgroundColor,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 95,
                    ),
                    Center(
                      child: Image.asset(
                        'asset/login.png',
                        width: 180,
                        height: 180,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Login',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Lowan Old Style',
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InputTextField(
                      hintText: 'Email Address',
                      textController: emailController,
                      inputType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InputTextField(
                      textController: passwordController,
                      hintText: 'Password',
                      obscurePassword: true,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    RoundButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BottomNavigatorView()));
                      },
                      title: 'Login',
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'New User ?  ',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUpView()));
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(
                                color: AppColor.creamColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
