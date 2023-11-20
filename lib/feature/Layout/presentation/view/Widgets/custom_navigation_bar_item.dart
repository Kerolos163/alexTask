import 'package:alextask/core/manager/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomNavigationBarItem extends StatelessWidget {
  const CustomNavigationBarItem(
      {super.key, required this.img, required this.isSelected, this.onTap});
  final String img;
  final bool isSelected;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(img),
            const SizedBox(height: 5),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: isSelected ? 4 : 0,
              width: isSelected ? 50 : 0,
              decoration: BoxDecoration(
                color: ColorManager.prime,
                borderRadius: BorderRadius.circular(10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
