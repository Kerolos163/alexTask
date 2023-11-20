import '../../../../core/manager/asser_manager.dart';
import '../../../../core/manager/color_manager.dart';
import 'widget/bottom_sheet_body.dart';
import '../viewModel/Cubit/cubit.dart';
import '../viewModel/Cubit/state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class InfoButtomSheet extends StatelessWidget {
  const InfoButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DescriptionCubit, DescriptionState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            DescriptionCubit.get(context).changeBottomSheet();
          },
          child: Container(
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
                SvgPicture.asset(
                  AssetManager.arrowSVG,
                  height: 10,
                  width: 10,
                ),
                DescriptionCubit.get(context).isOpen
                    ? const BottomSheetBody()
                    : Container()
              ],
            ),
          ),
        );
      },
    );
  }
}