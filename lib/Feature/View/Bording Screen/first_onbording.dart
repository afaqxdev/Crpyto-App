import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../Core/Resources/Component/text_widget.dart';
import '../../../Core/Resources/color/app_color.dart';
import '../../../Core/Resources/images/images_link.dart';

class FirstOnbording extends StatelessWidget {
  const FirstOnbording({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.bordingfirst,
          height: 400,
          width: 600,
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
      ],
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
