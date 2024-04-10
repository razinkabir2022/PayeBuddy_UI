import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/view/profile/account_screen.dart';
import 'package:currency/view/profile/payment_screen.dart';
import 'package:currency/view/profile/invite_friend_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 15),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundColor: ConstColors.whiteColor,
                  child: Icon(
                    Icons.arrow_back,
                    color: ConstColors.fontColor,
                    size: 20,
                  ),
                ),
                Text(
                  "Profile",
                  style: pSemiBold18.copyWith(
                    fontSize: 18,
                  ),
                ),
                const CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.transparent,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              physics: const ClampingScrollPhysics(),
              children: [
                Column(
                  children: [
                    const SizedBox(height: 20),
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        DefaultImages.h8,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Smith Rollins",
                      style: pSemiBold20.copyWith(
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "smithrollins05@gmail.com",
                      style: pRegular14.copyWith(
                        fontSize: 16,
                        color: ConstColors.greyColor,
                      ),
                    ),
                    const SizedBox(height: 20),
                    row(
                      "Invite Friends",
                      DefaultImages.p4,
                      () {
                        Get.to(
                          const InviteFriendScreen(),
                          transition: Transition.rightToLeft,
                        );
                      },
                      0,
                    ),
                    const SizedBox(height: 15),
                    row(
                      "Account",
                      DefaultImages.p7,
                      () {
                        Get.to(
                          const AccountScreen(),
                          transition: Transition.rightToLeft,
                        );
                      },
                      1,
                    ),
                    const SizedBox(height: 15),
                    row(
                      "Billing/Payment",
                      DefaultImages.p2,
                      () {
                        Get.to(
                          const PaymentScreen(),
                          transition: Transition.rightToLeft,
                        );
                      },
                      2,
                    ),
                    const SizedBox(height: 15),
                    row("Language", DefaultImages.p15, () {}, 3),
                    const SizedBox(height: 15),
                    row("Settings", DefaultImages.p14, () {}, 3),
                    const SizedBox(height: 15),
                    row("FAQ", DefaultImages.p18, () {}, 4),
                    const SizedBox(height: 20),
                    Container(
                      height: 59,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: ConstColors.fontColor,
                        boxShadow: [
                          BoxShadow(
                            color: ConstColors.fontColor.withOpacity(0.12),
                            blurRadius: 5,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.exit_to_app_outlined,
                            color: ConstColors.whiteColor,
                            size: 20,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Sign Out",
                            style: pSemiBold18.copyWith(
                              fontSize: 16,
                              color: ConstColors.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget row(String text, String image, VoidCallback onTap, int flag) {
  return InkWell(
    onTap: () {
      onTap();
    },
    child: Container(
      height: 64,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: flag == 0 ? ConstColors.primaryColor : ConstColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: ConstColors.greyColor.withOpacity(0.1),
            blurRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14),
        child: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: const Color(0xffA3DAFE),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  image,
                ),
              ),
            ),
            const SizedBox(width: 14),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: pSemiBold18.copyWith(
                    fontSize: 16,
                    color: flag == 0
                        ? ConstColors.whiteColor
                        : ConstColors.fontColor,
                  ),
                ),
                flag == 0
                    ? Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          "Invite your friends and get \$12",
                          style: pRegular14.copyWith(
                            fontSize: 12,
                            color: flag == 0
                                ? ConstColors.whiteColor.withOpacity(0.9)
                                : ConstColors.fontColor,
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
            const Expanded(child: SizedBox()),
            flag == 3
                ? Padding(
                    padding: const EdgeInsets.only(right: 3),
                    child: Text(
                      "English",
                      style: pRegular14.copyWith(
                        fontSize: 14,
                        color: ConstColors.greyColor,
                      ),
                    ),
                  )
                : const SizedBox(),
            Icon(
              Icons.arrow_forward_ios,
              color: flag == 0
                  ? ConstColors.whiteColor
                  : ConstColors.lightTextColor.withOpacity(0.5),
              size: 18,
            )
          ],
        ),
      ),
    ),
  );
}
