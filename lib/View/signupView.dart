import 'package:beauty_salon_ui/res/status_bar_color_change.dart';
import 'package:flutter/material.dart';

import '../Utils/input_text_field.dart';
import '../Utils/round_button.dart';
import '../res/appColor.dart';
import 'loginView.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return StatusBarColor(
        statusBarColor: AppColor.backgroundColor,
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
                        'Register',
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
                        hintText: ' Name',
                        textController: nameController,
                        inputType: TextInputType.name,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InputTextField(
                        textController: emailController,
                        hintText: 'Email Address',
                        inputType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InputTextField(
                        hintText: 'Contact No.',
                        textController: contactController,
                        inputType: TextInputType.number,
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
                        onPressed: () {},
                        title: 'SignUp',
                        width: MediaQuery.of(context).size.width * 1,
                      ),
                      const SizedBox(
                        height: 38,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Have Account ?  ',
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginView()));
                            },
                            child: const Text(
                              'Login',
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
        ));
  }
}
