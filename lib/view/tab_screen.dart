// ignore_for_file: deprecated_member_use

import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/controller/home_controller.dart';
import 'package:currency/view/chat/chat_view.dart';
import 'package:currency/view/home/home_view.dart';
import 'package:currency/view/profile/profile_view.dart';
import 'package:currency/view/wallet/wallet_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70 + MediaQuery.of(context).padding.bottom,
        width: Get.width,
        decoration: BoxDecoration(
          color: ConstColors.whiteColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff373E7D).withOpacity(0.05),
              blurRadius: 2,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              tabCard(
                DefaultImages.tab1,
                homeController.flag.value == 0
                    ? ConstColors.primaryColor
                    : ConstColors.fontColor.withOpacity(0.3),
                () {
                  homeController.flag.value = 0;
                },
              ),
              tabCard(
                DefaultImages.tab2,
                homeController.flag.value == 1
                    ? ConstColors.primaryColor
                    : ConstColors.fontColor.withOpacity(0.3),
                () {
                  homeController.flag.value = 1;
                },
              ),
              tabCard(
                DefaultImages.tab3,
                homeController.flag.value == 2
                    ? ConstColors.primaryColor
                    : ConstColors.fontColor.withOpacity(0.3),
                () {
                  homeController.flag.value = 2;
                },
              ),
              tabCard(
                DefaultImages.tab4,
                homeController.flag.value == 3
                    ? ConstColors.primaryColor
                    : ConstColors.fontColor.withOpacity(0.3),
                () {
                  homeController.flag.value = 3;
                },
              ),
            ],
          ),
        ),
      ),
      body: Obx(
        () => homeController.flag.value == 0
            ? const HomeView()
            : homeController.flag.value == 1
                ? const WalletView()
                : homeController.flag.value == 2
                    ? const ChatView()
                    : const ProfileView(),
      ),
    );
  }
}

Widget tabCard(String image, Color color, VoidCallback onTap) {
  return InkWell(
    onTap: () {
      onTap();
    },
    child: SizedBox(
      height: 22,
      width: 22,
      child: SvgPicture.asset(
        image,
        color: color,
        fit: BoxFit.fill,
      ),
    ),
  );
}
