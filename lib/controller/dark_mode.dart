import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DarkMode extends GetxController {
  bool isDark = false;

  void turnDark() {
    isDark = true;
    update();
  }
}
