import 'package:flutter/material.dart';

import '../manager/color_manager.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.txt, this.onTap});
  final String txt;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: ColorManager.prime,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          txt,
          style: const TextStyle(fontSize: 28, color: ColorManager.white),
        ),
      ),
    );
  }
}
