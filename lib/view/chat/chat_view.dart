import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/view/chat/chat_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: MediaQuery.of(context).padding.top + 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
              Text(
                "Messages",
                style: pRegular14.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Icon(
                Icons.more_vert,
                color: ConstColors.fontColor,
              )
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(
                          const ChatDetailScreen(),
                          transition: Transition.rightToLeft,
                        );
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  index == 0
                                      ? DefaultImages.t1
                                      : index == 1
                                          ? DefaultImages.t2
                                          : index == 2
                                              ? DefaultImages.t3
                                              : DefaultImages.t4,
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(width: 14),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                index == 0
                                    ? "Sowkot Hasan"
                                    : index == 0
                                        ? "Aminur Islam"
                                        : index == 0
                                            ? "Yeasin"
                                            : "Russel",
                                style: pSemiBold20.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                index == 0
                                    ? "Your package will arrive soon..."
                                    : index == 0
                                        ? "Thank you sir!"
                                        : index == 0
                                            ? "Yes, sure"
                                            : "Welcome!",
                                style: pRegular14.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: ConstColors.greyColor.withOpacity(0.6),
                                ),
                              )
                            ],
                          ),
                          const Expanded(child: SizedBox()),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                index == 0
                                    ? "10:30"
                                    : index == 0
                                        ? "Yeasterday"
                                        : index == 0
                                            ? "10 Sep"
                                            : "22 Aug",
                                style: pRegular14.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      ConstColors.greyColor.withOpacity(0.45),
                                ),
                              ),
                              const SizedBox(height: 10),
                              index == 0
                                  ? CircleAvatar(
                                      radius: 12,
                                      backgroundColor: ConstColors.primaryColor,
                                      child: Center(
                                        child: Text(
                                          "2",
                                          style: pSemiBold18.copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    )
                                  : const SizedBox(),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Divider(
                      color: ConstColors.greyColor.withOpacity(0.2),
                    ),
                    const SizedBox(height: 10),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
