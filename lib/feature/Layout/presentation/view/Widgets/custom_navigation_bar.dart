import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/manager/asser_manager.dart';
import '../../../../../core/manager/color_manager.dart';
import '../../viewModel/cubit/cubit.dart';
import '../../viewModel/cubit/state.dart';
import 'custom_navigation_bar_item.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayOutcubit, LayOutState>(
      builder: (context, state) {
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
              child: Row(
                children: [
                  CustomNavigationBarItem(
                    img: AssetManager.homeSVG,
                    isSelected: LayOutcubit.get(context).selectedView ==
                        AssetManager.homeSVG,
                    onTap: () {
                      LayOutcubit.get(context)
                          .changeView(newView: AssetManager.homeSVG);
                    },
                  ),
                  CustomNavigationBarItem(
                    onTap: () {
                      LayOutcubit.get(context)
                          .changeView(newView: AssetManager.checkListSVG);
                    },
                    img: AssetManager.checkListSVG,
                    isSelected: LayOutcubit.get(context).selectedView ==
                        AssetManager.checkListSVG,
                  ),
                  CustomNavigationBarItem(
                    onTap: () {
                      LayOutcubit.get(context)
                          .changeView(newView: AssetManager.chatSVG);
                    },
                    img: AssetManager.chatSVG,
                    isSelected: LayOutcubit.get(context).selectedView ==
                        AssetManager.chatSVG,
                  ),
                  CustomNavigationBarItem(
                    onTap: () {
                      LayOutcubit.get(context)
                          .changeView(newView: AssetManager.dotsSVG);
                    },
                    img: AssetManager.dotsSVG,
                    isSelected: LayOutcubit.get(context).selectedView ==
                        AssetManager.dotsSVG,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
