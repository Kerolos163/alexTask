import 'widget/home_body.dart';
import '../viewModel/cubit/cubit.dart';
import '../viewModel/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: BlocProvider(
          create: (context) => HomeCubit(),
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return Scaffold(
                appBar: AppBar(
                  title: Text(HomeCubit.get(context).selectedItem),
                  centerTitle: true,
                  automaticallyImplyLeading: false,
                ),
                body: const HomeBody(),
              );
            },
          ),
        ),
      ),
    );
  }
}
