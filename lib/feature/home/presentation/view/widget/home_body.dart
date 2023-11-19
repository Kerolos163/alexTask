// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:alextask/feature/home/presentation/view/widget/filteres_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:alextask/core/manager/color_manager.dart';
import 'package:alextask/feature/home/presentation/viewModel/cubit/cubit.dart';
import 'package:alextask/feature/home/presentation/viewModel/cubit/state.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: ColorManager.gray,
                ),
                child: Row(
                    children: List.generate(HomeCubit.get(context).items.length,
                        (index) {
                  return FilteredItem(
                    txt: HomeCubit.get(context).items[index],
                    onTap: () {
                      HomeCubit.get(context).changeSelectedItem(
                          newItem: HomeCubit.get(context).items[index]);
                    },
                    index: index,
                  );
                })),
              )
            ],
          ),
        );
      },
    );
  }
}


