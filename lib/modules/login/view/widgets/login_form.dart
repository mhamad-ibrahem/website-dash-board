import 'package:flutter/material.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../view/widget/custom_text_form_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(color: AppColors.primaryColor),
        ),
        const SizedBox(
          height: 20,
        ),
        const CustomTextFormField(
          label: 'Email',
          hint: 'ali123@gmail.com',
          icon: Icon(
            Icons.email_outlined,
            color: AppColors.primaryColor,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Password",
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(color: AppColors.primaryColor),
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextFormField(
          label: 'Password',
          hint: 'Ali123!@#200kh',
          icon: const Icon(
            Icons.lock,
            color: AppColors.primaryColor,
          ),
          suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.visibility,
                color: AppColors.grey,
              )),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    ));
  }
}
