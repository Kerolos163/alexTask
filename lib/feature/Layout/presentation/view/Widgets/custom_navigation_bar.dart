import 'package:alextask/core/manager/asser_manager.dart';
import 'package:alextask/core/manager/color_manager.dart';
import 'package:alextask/feature/Layout/presentation/view/Widgets/custom_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: ColorManager.lightGray)),
          child: const Row(
            children: [
              CustomNavigationBarItem(img: AssetManager.homeSVG),
              CustomNavigationBarItem(img: AssetManager.checkListSVG),
              CustomNavigationBarItem(img: AssetManager.chatSVG),
              CustomNavigationBarItem(img: AssetManager.dotsSVG),
            ],
          ),
        ),
      ),
    );
  }
}
