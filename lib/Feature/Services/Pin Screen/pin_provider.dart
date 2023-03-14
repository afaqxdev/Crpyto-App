import 'package:cryptotracker/Core/Routes/routes_name.dart';
import 'package:cryptotracker/Feature/View/Home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:cryptotracker/Core/Routes/routes_name.dart';
import 'package:get/get.dart';
import 'package:quickalert/quickalert.dart';

class PinProvider with ChangeNotifier {
  var selectedindex = 0;
  String code = '';

  addDigit(int digit, BuildContext context) {
    if (code.length > 3) {
      return;
    }

    code = code + digit.toString();
    print('Code is $code');
    selectedindex = code.length;
    if (code == '1234') {
      QuickAlert.show(
              context: context,
              type: QuickAlertType.loading,
              showCancelBtn: false,
              title: 'Loading',
              text: 'checking your password',
              autoCloseDuration: const Duration(seconds: 3))
          .then((value) =>
              Navigator.pushReplacementNamed(context, RoutesName.homeScreen));
    }

    notifyListeners();
  }

  backspace() {
    if (code.length == 0) {
      return;
    }

    code = code.substring(0, code.length - 1);
    selectedindex = code.length;
    notifyListeners();
  }
}
