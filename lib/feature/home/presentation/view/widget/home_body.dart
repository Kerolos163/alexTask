import '../../../../../core/my_device.dart';
import 'filteres_item.dart';
import 'product_item.dart';
import '../../viewModel/cubit/state.dart';
import 'package:flutter/material.dart';

import '../../../../../core/manager/color_manager.dart';
import '../../viewModel/cubit/cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                  color: ColorManager.lightGray,
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
              ),
              SizedBox(height: MyDevice.getHeigh(context) / 24),
              const ProductItem()
            ],
          ),
        );
      },
    );
  }
}
