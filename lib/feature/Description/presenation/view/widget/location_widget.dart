import '../../../../../core/manager/asser_manager.dart';
import '../../../../../core/manager/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key, required this.title, required this.txt});
  final String title;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AssetManager.location),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 14)),
            Text(txt,
                style: const TextStyle(fontSize: 14, color: ColorManager.gray))
          ],
        )
      ],
    );
  }
}
