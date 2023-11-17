import 'package:dash_board/core/constant/app_size.dart';
import 'package:flutter/material.dart';

import '../widgets/login_center_part.dart';

class MobileLoginPage extends StatelessWidget {
  const MobileLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginCenterPart(
      containerPadding: 15,
      containerWidth: AppSize.screenWidth(context) * 0.75,
      buttonHeight: 46,
    );
  }
}
