import 'package:alextask/feature/home/presentation/view/widget/home_body.dart';
import 'package:alextask/feature/home/presentation/viewModel/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: BlocProvider(
            create: (context) => HomeCubit(),
            child: const HomeBody(),
          ),
        ),
      ),
    );
  }
}
