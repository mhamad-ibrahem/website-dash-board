import 'package:dash_board/core/constant/app_size.dart';
import 'package:flutter/material.dart';
import '../widgets/login_center_part.dart';

class DesktopLoginPage extends StatelessWidget {
  const DesktopLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginCenterPart(
      containerPadding: 40,
      containerWidth: AppSize.screenWidth(context) * 0.5,
    );
  }
}
