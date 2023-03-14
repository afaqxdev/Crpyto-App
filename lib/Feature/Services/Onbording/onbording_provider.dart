import 'package:flutter/material.dart';

class OnbordingProvider with ChangeNotifier {
  int _intialpage = 0;
  int get intialpage => _intialpage;
  void increatment() {
    _intialpage++;
    notifyListeners();
  }

  void increatmentpage(int val) {
    _intialpage == val;
    notifyListeners();
  }
}
