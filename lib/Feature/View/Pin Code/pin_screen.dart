import 'package:cryptotracker/Core/Resources/Component/text_widget.dart';
import 'package:cryptotracker/Core/Resources/color/app_color.dart';
import 'package:flutter/material.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({super.key});

  @override
  State<PinScreen> createState() => _PinScreenState();
}

String? pincode;

class _PinScreenState extends State<PinScreen> {
  TextEditingController pinEditingController = TextEditingController(
    text: pincode,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(text: "Sign In"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Column(children: [
          Align(
            alignment: Alignment.center,
            child: TextWidget(
              text: "Enter Pin",
              size: 25,
              color: AppColor.whiteColor,
            ),
          ),
          10.ph,
          TextWidget(
            text: "Enter Your Pin Code",
            color: AppColor.greyColor,
          ),
          50.ph,
          SizedBox(
            width: 100,
            child: PinCodeTextField(
              length: 4,
              appContext: context,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(50),
                selectedFillColor: AppColor.whiteColor,
                fieldHeight: 15,
                inactiveColor: AppColor.coolColor,
                fieldWidth: 15,
                activeColor: Colors.transparent,
                inactiveFillColor: Colors.transparent,
                activeFillColor: Colors.transparent,
              ),
              obscureText: true,
              controller: pinEditingController,
              animationDuration: Duration(milliseconds: 300),
              backgroundColor: Colors.transparent,
              enableActiveFill: true,
              onCompleted: (v) {},
              onChanged: (value) {
                setState(() {});
              },
            ),
          ),
          50.ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              btn("1"),
              40.pw,
              btn("2"),
              40.pw,
              btn("3"),
            ],
          ),
          40.ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              btn("4"),
              40.pw,
              btn("5"),
              40.pw,
              btn("6"),
            ],
          ),
          40.ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              btn("7"),
              40.pw,
              btn("8"),
              40.pw,
              btn("9"),
            ],
          ),
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
        width: toDouble(),
      );
}

Widget btn(String name) {
  return Container(
    height: 60,
    width: 60,
    decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: AppColor.coolColor),
        borderRadius: BorderRadius.circular(50)),
    child: InkWell(
      onTap: () {
        pinFunction(String pin) {
          pincode = pin;
        }
      },
      child: Center(child: TextWidget(text: name)),
    ),
  );
}
