import 'package:alextask/feature/Description/presenation/view/widget/calendar_widget.dart';
import 'package:flutter/material.dart';

class FromToTimeWidget extends StatelessWidget {
  const FromToTimeWidget({
    super.key,
    required this.title1,
    required this.date1,
    required this.time1,
    required this.title2,
    required this.date2,
    required this.time2,
  });
  final String title1;
  final String date1;
  final String time1;
  final String title2;
  final String date2;
  final String time2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CalendarWidget(
          title: title1,
          date: date1,
          time: time1,
        ),
        CalendarWidget(
          title: title2,
          date: date2,
          time: time2,
        ),
      ],
    );
  }
}
