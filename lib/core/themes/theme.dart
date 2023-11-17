import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import 'dark/dark_theme_text.dart';
import 'light/light_theme_text.dart';

class AppTheme {
  ThemeData currentTheme = AppTheme.lightsTheme;
  static ThemeData lightsTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.white,
    textTheme: TextTheme(
      displaySmall: displaySmallLight(),
      displayMedium: displayMediumLight(),
      displayLarge: displayLargeLight(),
    ),
    primaryColor: AppColors.primaryColor,
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.black,
    textTheme: TextTheme(
      displaySmall: displaySmallDark(),
      displayMedium: displayMediumDark(),
      displayLarge: displayLargeDark(),
    ),
    primaryColor: AppColors.primaryColor,
  );
}
