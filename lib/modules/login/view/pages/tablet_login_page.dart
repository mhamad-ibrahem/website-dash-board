import 'package:flutter/material.dart';
import '../../../../core/constant/app_size.dart';
import '../widgets/login_center_part.dart';

class TabletLoginPage extends StatelessWidget {
  const TabletLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginCenterPart(
      containerPadding: 25,
      containerWidth: AppSize.screenWidth(context) * 0.65,
      buttonHeight: 60,
    );
  }
}
