import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/view/auth/secure_screen.dart';
import 'package:currency/view/auth/signup_screen.dart';
import 'package:currency/widget/custom_button.dart';
import 'package:currency/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 15),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const CircleAvatar(
                radius: 18,
                backgroundColor: ConstColors.whiteColor,
                child: Icon(
                  Icons.arrow_back,
                  color: ConstColors.fontColor,
                  size: 20,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                physics: const ClampingScrollPhysics(),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Text(
                        "Let’s Sign In",
                        style: pSemiBold20.copyWith(
                          fontSize: 36,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Welcome back, you have been missed!",
                        style: pRegular14.copyWith(
                          fontSize: 14,
                          color: ConstColors.lightTextColor,
                        ),
                      ),
                      const SizedBox(height: 30),
                      CustomTextField(
                        text: "Email address",
                        textEditingController:
                            TextEditingController(text: "ofspace@gmail.com"),
                        sufix: const SizedBox(),
                      ),
                      const SizedBox(height: 15),
                      CustomTextField(
                        text: "Password",
                        textEditingController:
                            TextEditingController(text: "123456789"),
                        sufix: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: SvgPicture.asset(
                            DefaultImages.eye,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot Password?",
                            style: pRegular14.copyWith(
                              fontSize: 14,
                              color: ConstColors.primaryColor,
                              decoration: TextDecoration.underline,
                              decorationThickness: 1.5,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ],
              ),
            ),
            CustomButton(
              text: "Log In",
              color: ConstColors.primaryColor,
              onTap: () {
                Get.to(
                  const SecureScreen(),
                  transition: Transition.rightToLeft,
                );
              },
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                Get.to(
                  const SignupScreen(),
                  transition: Transition.rightToLeft,
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have account account ? ",
                    style: pRegular14.copyWith(
                      fontSize: 14,
                      color: ConstColors.fontColor,
                    ),
                  ),
                  Text(
                    "Sign Up",
                    style: pSemiBold18.copyWith(
                      fontSize: 14,
                      color: ConstColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
