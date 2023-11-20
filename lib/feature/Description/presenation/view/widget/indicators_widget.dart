import '../../../../../core/manager/color_manager.dart';
import '../../viewModel/Cubit/cubit.dart';
import 'package:flutter/material.dart';

class IndicatorsWidget extends StatelessWidget {
  const IndicatorsWidget({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < DescriptionCubit.get(context).imgs.length; i++)
          currentIndex == i ? selectedIndicator() : unSelectedIndicator()
      ],
    );
  }

  Padding unSelectedIndicator() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: ColorManager.lightGray,
        radius: 6,
      ),
    );
  }

  Padding selectedIndicator() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: ColorManager.prime,
        radius: 6,
      ),
    );
  }
}
