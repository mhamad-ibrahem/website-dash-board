import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_size.dart';
import '../../../../view/widget/custom_button.dart';
import 'login_form.dart';

class LoginCenterPart extends StatelessWidget {
  const LoginCenterPart(
      {super.key,
      this.containerWidth,
      this.containerPadding,
      this.buttonHeight});
  final double? containerWidth;
  final double? containerPadding;
  final double? buttonHeight;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: containerWidth,
        // height: 500,
        padding: EdgeInsets.all(containerPadding ?? 40),
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(12)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login to access your dash board",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(
                height: 30,
              ),
              LoginForm(),
              Center(
                child: CustomButton(
                    hight: buttonHeight ?? 70,
                    buttonBody: 'Login',
                    onTap: () {},
                    buttonWidth: AppSize.screenWidth(context) * 0.3),
              )
            ],
          ),
        ),
      ),
    );
  }
}
