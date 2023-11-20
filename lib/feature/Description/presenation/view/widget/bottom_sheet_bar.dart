import 'package:alextask/core/manager/asser_manager.dart';
import 'package:alextask/core/manager/color_manager.dart';
import 'package:alextask/core/my_device.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomSheetBar extends StatelessWidget {
  const BottomSheetBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MyDevice.getHeigh(context) / 26,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: ColorManager.gray,
        ),
      ),
      child: Center(
          child: SvgPicture.asset(
        AssetManager.arrowSVG,
        height: MyDevice.getHeigh(context) / 50,
        width: MyDevice.getHeigh(context) / 50,
      )),
    );
  }
}