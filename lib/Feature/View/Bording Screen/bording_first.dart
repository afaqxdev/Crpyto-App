// ignore: prefer_const_constructors
// ignore_for_file: unused_local_variable, must_be_immutable

import 'package:cryptotracker/Core/Resources/Component/round_button.dart';
import 'package:cryptotracker/Core/Resources/color/app_color.dart';
import 'package:cryptotracker/Core/Resources/images/images_link.dart';
import 'package:cryptotracker/Feature/View/Bording%20Screen/second_onbording.dart';
import 'package:cryptotracker/Feature/View/Bording%20Screen/third_onbording.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Core/Resources/Component/text_widget.dart';
import 'first_onbording.dart';

class BoardingFirst extends StatefulWidget {
  BoardingFirst({super.key});

  @override
  State<BoardingFirst> createState() => _BoardingFirstState();
}

class _BoardingFirstState extends State<BoardingFirst> {
  // List<Widget> myList = List.generate(3, (index) {
  //   return Row(
  //     children: const [
  //       CircleAvatar(
  //         radius: 10,
  //         backgroundColor: AppColor.greyColor,
  //       ),
  //       SizedBox(
  //         width: 10,
  //       )
  //     ],
  //   );
  // });

  final controller = PageController(initialPage: 0);

  int intialpage = 0;
  List<Widget> page = [
    SecondOnbording(),
    FirstOnbording(),
    ThirdOnbording(),
  ];

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
              Expanded(
                child: PageView(
                  allowImplicitScrolling: false,
                  controller: controller,
                  pageSnapping: false,
                  children: page,
                  onPageChanged: (value) {
                    setState(() {
                      intialpage = value;
                    });
                  },
                ),
              ),
              // 30.ph,
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: myList,
              // ),
              50.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 3; i++)
                    if (i == intialpage)
                      Row(
                        children: [
                          10.pw,
                          const CircleAvatar(
                            radius: 10,
                            backgroundColor: AppColor.coolColor,
                          ),
                        ],
                      )
                    else
                      Row(
                        children: [
                          10.pw,
                          const CircleAvatar(
                            radius: 10,
                            backgroundColor: AppColor.greyColor,
                          ),
                        ],
                      )
                ],
              ),
              70.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              ),
              RoundButton(
                height: 50,
                width: 250,
                title: "Next Step",
                onPres: () {
                  setState(() {
                    intialpage++;
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
