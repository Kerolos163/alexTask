import '../../../../core/manager/asser_manager.dart';
import 'Widgets/custom_navigation_bar.dart';
import '../viewModel/cubit/cubit.dart';
import '../viewModel/cubit/state.dart';
import '../../../home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayOutView extends StatelessWidget {
  const LayOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayOutcubit(),
      child: BlocBuilder<LayOutcubit, LayOutState>(
        builder: (context, state) {
          return Scaffold(
            body: LayOutcubit.get(context).selectedView == AssetManager.homeSVG
                ? const HomeView()
                : Container(),
            bottomSheet: const Directionality(
              textDirection: TextDirection.rtl,
              child: CustomNavigationBar(),
            ),
          );
        },
      ),
    );
  }
}
