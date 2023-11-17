import 'package:flutter/material.dart';

import '../../core/constant/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.icon,
    required this.label,
    required this.hint,
    this.obscure = false,
    this.textEditingController,
    this.validator,
    this.inputType,
    this.isEmojiVisible = false,
    this.suffixIcon,
    this.onChange,
    this.onTap,
    this.focusNode,
    this.isMultiLine = false,
    this.isEnable,
  }) : super(key: key);
  final Widget? icon;
  final String label;
  final String hint;
  final bool obscure;
  final TextInputType? inputType;
  final TextEditingController? textEditingController;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final void Function(String)? onChange;
  final bool isEmojiVisible;
  final bool isMultiLine;
  final void Function()? onTap;
  final FocusNode? focusNode;
  final bool? isEnable;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      onChanged: onChange,
      controller: textEditingController,
      validator: validator,
      style: Theme.of(context).textTheme.displaySmall,
      obscureText: obscure,
      enabled: isEnable ?? true,
      maxLines: isMultiLine ? 4 : 1,
      cursorColor: AppColors.deepGrey,
      keyboardType: inputType,
      decoration: InputDecoration(
          fillColor: AppColors.black,
          suffixIcon: suffixIcon,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: onTap,
              child: icon,
            ),
          ),
          contentPadding:
              const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
          hintText: hint,
          hintStyle: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: AppColors.deepGrey),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: AppColors.primaryColor, width: 2)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColors.primaryColor)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColors.red, width: 2)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          )),
    );
  }
}
