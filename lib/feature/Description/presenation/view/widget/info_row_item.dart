import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/manager/color_manager.dart';

class InfoRowItem extends StatelessWidget {
  const InfoRowItem(
      {super.key, required this.txt1, required this.txt2, required this.img});
  final String img;
  final String txt1;
  final String txt2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(img),
        const SizedBox(width: 20),
        Text(
          txt1,
          style: const TextStyle(color: ColorManager.darkBlue, fontSize: 14),
        ),
        const Spacer(),
        Text(
          txt2,
          style: const TextStyle(color: ColorManager.gray2, fontSize: 14),
          textDirection: TextDirection.ltr,
        ),
      ],
    );
  }
}