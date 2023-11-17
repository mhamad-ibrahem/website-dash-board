import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/constant/app_route.dart';
import 'core/routes/routes.dart';
import 'core/themes/theme.dart';
import 'modules/login/view/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightsTheme,
      // initialRoute: AppRoute.login,
      // getPages: routes,
      home: const LoginPage(),
    );
  }
}
