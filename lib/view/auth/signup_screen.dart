import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/view/auth/login_screen.dart';
import 'package:currency/view/tab_screen.dart';
import 'package:currency/widget/custom_button.dart';
import 'package:currency/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                        "Sign Up",
                        style: pSemiBold20.copyWith(
                          fontSize: 36,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Create an account to continue!",
                        style: pRegular14.copyWith(
                          fontSize: 14,
                          color: ConstColors.lightTextColor,
                        ),
                      ),
                      const SizedBox(height: 30),
                      CustomTextField(
                        text: "Full name",
                        textEditingController: TextEditingController(),
                        sufix: const SizedBox(),
                      ),
                      const SizedBox(height: 15),
                      CustomTextField(
                        text: "Email address",
                        textEditingController: TextEditingController(),
                        sufix: const SizedBox(),
                      ),
                      const SizedBox(height: 15),
                      CustomTextField(
                        text: "Password",
                        textEditingController: TextEditingController(),
                        sufix: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: SvgPicture.asset(
                            DefaultImages.eye,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: ConstColors.primaryColor,
                            ),
                            child: const Icon(
                              Icons.check,
                              color: ConstColors.whiteColor,
                              size: 12,
                            ),
                          ),
                          const SizedBox(width: 14),
                          Text(
                            "I agree to the Terms of Service and Privacy Policy",
                            style: pRegular14.copyWith(
                              fontSize: 14,
                              color: ConstColors.fontColor,
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
              text: "Sign Up",
              color: ConstColors.primaryColor,
              onTap: () {
                Get.offAll(
                  const TabScreen(),
                  transition: Transition.rightToLeft,
                );
              },
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                Get.to(
                  const LoginScreen(),
                  transition: Transition.rightToLeft,
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account ? ",
                    style: pRegular14.copyWith(
                      fontSize: 14,
                      color: ConstColors.fontColor,
                    ),
                  ),
                  Text(
                    "Sign in",
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
