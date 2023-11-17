import 'package:flutter/material.dart';

import '../../core/constant/app_colors.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      indent: 10,
      color: AppColors.lGrey,
      thickness: 2,
    );
  }
}
