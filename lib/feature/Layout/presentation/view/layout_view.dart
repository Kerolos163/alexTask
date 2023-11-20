import 'package:alextask/feature/Layout/presentation/view/Widgets/custom_navigation_bar.dart';
import 'package:alextask/feature/Layout/presentation/viewModel/cubit/cubit.dart';
import 'package:alextask/feature/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayOutView extends StatelessWidget {
  const LayOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayOutcubit(),
      child: const Scaffold(
        body: HomeView(),
        bottomSheet: Directionality(
          textDirection: TextDirection.rtl,
          child: CustomNavigationBar(),
        ),
      ),
    );
  }
}
