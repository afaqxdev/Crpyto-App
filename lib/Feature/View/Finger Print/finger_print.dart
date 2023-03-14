// ignore_for_file: prefer_const_constructors

import 'package:cryptotracker/Feature/Services/FingerPrint%20Services/finger_print.dart';
import 'package:cryptotracker/Feature/View/Home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FingerPrint extends StatefulWidget {
  const FingerPrint({super.key});

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ActionChip(
              label: Text("chech User Authentication"),
              onPressed: () async {
                final iAuthenticated = await LocalAuth.authenticate();
                if (iAuthenticated) {
                  Get.to(HomePage());
                }
              }),
        ]),
      ),
    );
  }
}
