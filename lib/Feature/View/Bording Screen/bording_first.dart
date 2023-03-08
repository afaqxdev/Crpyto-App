// ignore: prefer_const_constructors
import 'package:cryptotracker/Core/Resources/Component/round_button.dart';
import 'package:cryptotracker/Core/Resources/color/app_color.dart';
import 'package:cryptotracker/Core/Resources/images/images_link.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Core/Resources/Component/text_widget.dart';

class BoardingFirst extends StatelessWidget {
  const BoardingFirst({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: height * .5,
                width: width * 4,
                child: Image.asset(
                  AppImages.bordingfirst,
                  fit: BoxFit.fill,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: TextWidget(
                  text: "firstBoarding".tr,
                  size: 50,
                  color: AppColor.whiteColor,
                  weight: FontWeight.bold,
                ),
              ),
              // ignore: prefer_const_constructors
              30.ph,
              Align(
                alignment: Alignment.centerLeft,
                child: TextWidget(
                  text: "Fbordingbase".tr,
                  size: 20,
                  color: AppColor.greyColor,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: AppColor.greyColor,
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              RoundButton(
                height: 50,
                width: 250,
                title: "Next Step",
                onPres: () {},
              )
            ]),
      ),
    );
  }
}

extension on num {
  SizedBox get ph => SizedBox(
        height: toDouble(),
      );
  // ignore: unused_element
  SizedBox get pw => SizedBox(
        height: toDouble(),
      );
}
