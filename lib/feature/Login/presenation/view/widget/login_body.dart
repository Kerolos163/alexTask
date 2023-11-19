import '../../../../../core/manager/asser_manager.dart';
import '../../../../../core/manager/color_manager.dart';
import '../../../../../core/my_device.dart';
import 'login_form.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: ListView(
    //     children: [
    // SizedBox(
    //   height: MyDevice.getHeigh(context) > 850
    //       ? MyDevice.getHeigh(context) / 25
    //       : 0,
    // ),
    //       Image.asset(AssetManager.car),
    //       SizedBox(height: MyDevice.getHeigh(context) / 45),
    // const Text(
    //   "تسجيل دخول",
    //   style: TextStyle(
    //     fontSize: 16,
    //     color: ColorManager.darkBlue,
    //   ),
    //         textAlign: TextAlign.center,
    //       ),
    // SizedBox(
    //     height: MyDevice.getHeigh(context) < 650
    //         ? MyDevice.getHeigh(context) / 45
    //         : MyDevice.getHeigh(context) / 18),
    //       const LoginForm()
    //     ],
    //   ),
    // );
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: MyDevice.getHeigh(context) > 850
                ? MyDevice.getHeigh(context) / 25
                : 0,
          ),
        ),
        SliverToBoxAdapter(
          child: Image.asset(AssetManager.car),
        ),
        const SliverToBoxAdapter(
            child: Center(
          child: Text(
            "تسجيل دخول",
            style: TextStyle(
              fontSize: 16,
              color: ColorManager.darkBlue,
            ),
          ),
        )),
        SliverToBoxAdapter(
          child: SizedBox(
              height: MyDevice.getHeigh(context) < 650
                  ? MyDevice.getHeigh(context) / 45
                  : MyDevice.getHeigh(context) / 18),
        ),
        const SliverFillRemaining(
          hasScrollBody: false,
          child: LoginForm(),
        )
      ],
    );
  }
}
