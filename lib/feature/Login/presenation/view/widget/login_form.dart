import '../../../../Layout/presentation/view/layout_view.dart';

import '../../../../../core/manager/asser_manager.dart';
import '../../../../../core/manager/color_manager.dart';
import '../../../../../core/my_device.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../viewMode/Cubit/cubit.dart';
import '../../viewMode/Cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              numberRow(),
              const SizedBox(height: 20),
              passwordRow(context),
              const SizedBox(height: 8),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "هل نسيت كلمة السر؟",
                  style: TextStyle(fontSize: 16, color: ColorManager.darkGray),
                ),
              ),
              const SizedBox(height: 16),
              CustomButton(
                txt: "تسجيل دخول",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LayOutView(),
                  ));
                },
              ),
              SizedBox(height: MyDevice.getHeigh(context) / 24),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سجل الان",
                    style: TextStyle(fontSize: 18, color: ColorManager.prime),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "ليس لديك حساب",
                    style:
                        TextStyle(fontSize: 18, color: ColorManager.darkBlue),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }

  Directionality passwordRow(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: CustomTextFormField(
        obscureText: LoginCubit.get(context).isVisiable,
        hint: "كلمة المرور",
        suffixIcon: IconButton(
          onPressed: () {
            LoginCubit.get(context).changeVisibility();
          },
          icon: Icon(
            LoginCubit.get(context).isVisiable
                ? Icons.visibility
                : Icons.visibility_off,
          ),
        ),
        prefixIcon: SvgPicture.asset(AssetManager.lockSVG),
      ),
    );
  }

  Row numberRow() {
    return Row(
      children: [
        const Expanded(
          child: CustomTextFormField(),
        ),
        const SizedBox(width: 16),
        Container(
          height: 60,
          width: 100,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: ColorManager.gray, width: 1.5)),
          child: LayoutBuilder(
            builder: (context, constraints) {
              var width = constraints.maxWidth;

              return Row(children: [
                Text("+966", style: TextStyle(fontSize: width / 6)),
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    AssetManager.flag,
                    height: width / 2,
                    width: width / 2,
                  ),
                )
              ]);
            },
          ),
        )
      ],
    );
  }
}
