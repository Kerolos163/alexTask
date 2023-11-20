import 'package:alextask/feature/Description/presenation/view/widget/description_body.dart';
import 'package:alextask/feature/Description/presenation/viewModel/Cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DescriptionView extends StatelessWidget {
  const DescriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text("تفاصيل الطلب"),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: BlocProvider(
          create: (context) => DescriptionCubit(),
          child: const DescriptionBody(),
        ),
      ),
    );
  }
}
