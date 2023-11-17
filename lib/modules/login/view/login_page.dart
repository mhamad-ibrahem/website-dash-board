import 'package:dash_board/core/constant/app_assets.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/app_size.dart';
import '../../../view/shared/responsive_layout_widget.dart';
import 'pages/desktop_login_page.dart';
import 'pages/mobile_login_page.dart';
import 'pages/tablet_login_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: AppSize.screenHeight(context),
        width: AppSize.screenWidth(context),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  AppAssets.loginBackground,
                ),
                fit: BoxFit.cover)),
        // child: LoginCenterPart(),
        child: const ResponsiveLayOutWidget(
            mobileScreen: MobileLoginPage(),
            desktopScreen: DesktopLoginPage(),
            tabletScreen: TabletLoginPage()),
      ),
    );
  }
}

/* 
ResponsiveLayOutWidget(
          mobileScreen: MobileLoginPage(),
          desktopScreen: DesktopLoginPage(),
          tabletScreen: TabletLoginPage())
*/
