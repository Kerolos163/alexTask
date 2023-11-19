import 'package:flutter/material.dart';

import '../manager/color_manager.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hint,
    this.obscureText = false,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.prefixIcon,
  });
  final String? hint;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(fontSize: 16,color: ColorManager.gray),
        contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 18),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        border: outlineInputBorder(color: ColorManager.gray),
        focusedBorder: outlineInputBorder(color: ColorManager.gray),
        enabledBorder: outlineInputBorder(color: ColorManager.gray),
        errorBorder: outlineInputBorder(color: ColorManager.gray),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color, width: 1.5),
    );
  }
}
