import 'package:alextask/core/manager/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomNavigationBarItem extends StatelessWidget {
  const CustomNavigationBarItem({super.key, required this.img});
final String img;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(img),
          const SizedBox(height: 5),
          Container(
            height: 4,
            width: 50,
            decoration: BoxDecoration(
              color: ColorManager.prime,
              borderRadius: BorderRadius.circular(10),
            ),
          )
        ],
      ),
    );
  }
}