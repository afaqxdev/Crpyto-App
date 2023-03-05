import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../Resources/color/app_colors.dart';

// ignore: camel_case_types
class uitls {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFcous) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFcous);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: AppColor.blackColor,
        gravity: ToastGravity.BOTTOM);
  }

  static snackBar(String message, String title) {
    Get.snackbar(title, message);
  }
}
