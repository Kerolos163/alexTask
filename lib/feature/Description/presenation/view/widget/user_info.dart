import 'package:alextask/core/manager/asser_manager.dart';
import 'package:alextask/core/manager/color_manager.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8),
      elevation: 1.2,
      shadowColor: ColorManager.lightGray,
      child: Container(
        padding: const EdgeInsets.only(right: 8, top: 8, bottom: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: ColorManager.lightGray, width: .8),
        ),
        child: const Row(children: [
          CircleAvatar(
            backgroundImage: AssetImage(AssetManager.hulk),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ابو فهد عبد العزيز",
                  style: TextStyle(fontSize: 14, color: ColorManager.darkBlue)),
              Text("السعودية",
                  style: TextStyle(fontSize: 14, color: ColorManager.darkBlue)),
            ],
          )
        ]),
      ),
    );
  }
}
