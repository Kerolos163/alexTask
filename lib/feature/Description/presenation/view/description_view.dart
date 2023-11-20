
import 'info_buttom_sheet.dart';
import 'widget/description_body.dart';
import '../viewModel/Cubit/cubit.dart';
import '../viewModel/Cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DescriptionView extends StatelessWidget {
  const DescriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DescriptionCubit(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: const Text("تفاصيل الطلب"),
        ),
        body: const Directionality(
          textDirection: TextDirection.rtl,
          child: DescriptionBody(),
        ),
        bottomSheet: BlocBuilder<DescriptionCubit, DescriptionState>(
          builder: (context, state) {
            return const InfoButtomSheet();
          },
        ),
      ),
    );
  }
}
