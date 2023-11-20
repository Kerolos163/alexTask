import 'package:alextask/core/manager/asser_manager.dart';
import 'package:alextask/core/manager/color_manager.dart';
import 'package:alextask/feature/Description/presenation/viewModel/Cubit/cubit.dart';
import 'package:alextask/feature/Description/presenation/viewModel/Cubit/state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class InfoButtomSheet extends StatelessWidget {
  const InfoButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DescriptionCubit, DescriptionState>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              border: Border.all(color: ColorManager.gray2)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  DescriptionCubit.get(context).changeBottomSheet();
                },
                child: SvgPicture.asset(
                  AssetManager.arrowSVG,
                  height: 10,
                  width: 10,
                ),
              ),
              DescriptionCubit.get(context).isOpen
                  ? const BottomSheetBody()
                  : Container()
            ],
          ),
        );
      },
    );
  }
}

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 13),
        Align(
          alignment: Alignment.centerRight,
          child: Text("تحديد السعر بين العميل والسائق"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "2500 ريال",
              style: TextStyle(color: ColorManager.prime),
              textDirection: TextDirection.rtl,
            ),
            SizedBox(width: 8),
            Text("السعر الحالي"),
          ],
        ),
      ],
    );
  }
}
