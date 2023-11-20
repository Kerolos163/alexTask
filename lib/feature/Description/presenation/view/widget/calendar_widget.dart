import 'package:alextask/core/manager/asser_manager.dart';
import 'package:alextask/core/manager/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget(
      {super.key, required this.title, required this.date, required this.time});
  final String title;
  final String date;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AssetManager.blueCalendar),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 14)),
            Text(date,
                style: const TextStyle(fontSize: 14, color: ColorManager.gray)),
            Text(time,
                style: const TextStyle(fontSize: 14, color: ColorManager.gray))
          ],
        )
      ],
    );
  }
}
