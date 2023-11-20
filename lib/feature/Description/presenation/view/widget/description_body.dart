import 'package:alextask/core/manager/asser_manager.dart';
import 'package:alextask/feature/Description/presenation/view/widget/indicators_widget.dart';
import 'package:alextask/feature/Description/presenation/view/widget/user_info.dart';
import 'package:alextask/feature/Description/presenation/viewModel/Cubit/cubit.dart';
import 'package:alextask/feature/Description/presenation/viewModel/Cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DescriptionBody extends StatelessWidget {
  const DescriptionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DescriptionCubit, DescriptionState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 28),
          child: Column(
            children: [
              const SizedBox(height: 16),
              SizedBox(
                height: 180,
                child: PageView.builder(
                  itemBuilder: (context, index) => ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(AssetManager.box, fit: BoxFit.fitWidth),
                  ),
                  onPageChanged: (value) {
                    DescriptionCubit.get(context)
                        .changeCurrentIndex(newIndex: value);
                  },
                  itemCount: DescriptionCubit.get(context).imgs.length,
                ),
              ),
              const SizedBox(height: 10),
              IndicatorsWidget(
                currentIndex: DescriptionCubit.get(context).currentindex,
              ),
              const SizedBox(height: 12),
              const UserInfo()
            ],
          ),
        );
      },
    );
  }
}
