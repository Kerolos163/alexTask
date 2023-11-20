import 'location_widget.dart';
import 'package:flutter/material.dart';

class FromToLocationWidget extends StatelessWidget {
  const FromToLocationWidget({
    super.key,
    required this.title1,
    required this.txt1,
    required this.title2,
    required this.txt2,
  });
  final String title1;
  final String txt1;

  final String title2;
  final String txt2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LocationWidget(
          title: title1,
          txt: txt1,
        ),
        LocationWidget(
          title: title2,
          txt: txt2,
        ),
      ],
    );
  }
}
