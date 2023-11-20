import 'package:alextask/feature/Layout/presentation/view/Widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class LayOutView extends StatelessWidget {
  const LayOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        bottomSheet: Directionality(
            textDirection: TextDirection.rtl, child: CustomNavigationBar()));
  }
}
