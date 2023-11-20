import 'package:flutter/material.dart';

import '../../../../../core/manager/color_manager.dart';
import '../../viewModel/cubit/cubit.dart';

class FilteredItem extends StatelessWidget {
  const FilteredItem({
    Key? key,
    required this.txt,
    this.onTap,
    required this.index,
  }) : super(key: key);
  final String txt;
  final void Function()? onTap;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          decoration: HomeCubit.get(context).items[index] ==
                  HomeCubit.get(context).selectedItem
              ? BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(8),
                )
              : const BoxDecoration(
                  color: ColorManager.lightGray,
                ),
          child: Text(txt, style: const TextStyle(fontSize: 14)),
        ),
      ),
    );
  }
}
