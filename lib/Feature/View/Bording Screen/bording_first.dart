// ignore: prefer_const_constructors
// ignore_for_file: unused_local_variable, must_be_immutable

import 'package:cryptotracker/Core/Resources/Component/round_button.dart';
import 'package:cryptotracker/Core/Resources/color/app_color.dart';
import 'package:cryptotracker/Core/Resources/images/images_link.dart';
import 'package:cryptotracker/Feature/View/Bording%20Screen/third_onbording.dart';
import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingFirst extends StatefulWidget {
  const BoardingFirst({super.key});

  @override
  State<BoardingFirst> createState() => _BoardingFirstState();
}

class _BoardingFirstState extends State<BoardingFirst> {
  List<Widget> myList = List.generate(3, (index) {
    return Row(
      children: const [
        CircleAvatar(
          radius: 10,
          backgroundColor: AppColor.greyColor,
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  });

  final controller = PageController(initialPage: 0, keepPage: true);

  int intialpage = 0;
  List<Widget> page = [
    CustomOnbording(
      title: 'firstBoarding'.tr,
      subtitle: 'Fbordingbase'.tr,
      image: AppImages.bordingfirst,
    ),
    CustomOnbording(
      title: 'SecondBoarding'.tr,
      subtitle: 'Sbordingbase'.tr,
      image: AppImages.bordingSecond,
    ),
    CustomOnbording(
      title: 'ThirdBoarding'.tr,
      subtitle: 'Tbordingbase'.tr,
      image: AppImages.bordingthird,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: page,
              onPageChanged: (value) {
                setState(() {
                  intialpage++;
                });
              },
            ),
          ),
          50.ph,
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     for (int i = 0; i < 3; i++)
          //       if (i == intialpage)
          //         Row(
          //           children: [
          //             const CircleAvatar(
          //               radius: 10,
          //               backgroundColor: AppColor.coolColor,
          //             ),
          //             10.pw,
          //           ],
          //         )
          //       else
          //         Row(
          //           children: [
          //             const CircleAvatar(
          //               radius: 10,
          //               backgroundColor: AppColor.greyColor,
          //             ),
          //             10.pw,
          //           ],
          //         )
          //   ],
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: myList,
          // ),
          SmoothPageIndicator(
              controller: controller,
              count: myList.length,
              effect: const JumpingDotEffect(
                // activeStrokeWidth: 2.6,
                // activeDotScale: 1.3,
                // maxVisibleDots: 5,

                radius: 10,
                paintStyle: PaintingStyle.fill,
                spacing: 10,
                activeDotColor: AppColor.coolColor,
                dotHeight: 17,
                dotWidth: 17,
              )),
          70.ph,
          RoundButton(
            height: 50,
            width: 250,
            title: "Next Step",
            onPres: () {
              setState(() {
                Get.to(page);
              });
            },
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
