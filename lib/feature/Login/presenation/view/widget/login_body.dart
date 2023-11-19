import 'package:alextask/core/asser_manager.dart';
import 'package:alextask/core/color_manager.dart';
import 'package:alextask/core/my_device.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetManager.car),
          SizedBox(height: MyDevice.getHeigh(context) / 10),
          const Text(
            "تسجيل دخول",
            style: TextStyle(fontSize: 16, color: ColorManager.darkBlue),
          ),
          SizedBox(height: MyDevice.getHeigh(context) / 10),
          
        ],
      ),
    );
  }
}
