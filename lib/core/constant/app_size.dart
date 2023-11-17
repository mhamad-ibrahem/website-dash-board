import 'package:flutter/material.dart';

class AppSize {
  static const mobileMaxSize = 500;
  static const tabletMaxSize = 1100;
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
