import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier {
  int counter = 0;
  int num=9;
  void increment() {
    counter++;
    notifyListeners();
  }

  ThemeMode tm = ThemeMode.light;
  bool valueswithch = false;

  void switcsh(bool value) {
    valueswithch = value;
    if (valueswithch == false) {
      tm = ThemeMode.light;
    } else {
      tm = ThemeMode.dark;
    }
    notifyListeners();
  }
}
