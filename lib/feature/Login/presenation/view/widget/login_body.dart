import 'package:alextask/core/asser_manager.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AssetManager.car),
        const Text("تسجيل دخول",)
      ],
    );
  }
}
