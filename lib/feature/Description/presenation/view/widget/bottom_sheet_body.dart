import 'package:alextask/core/manager/color_manager.dart';
import 'package:flutter/material.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 13),
        Align(
          alignment: Alignment.centerRight,
          child: Text("تحديد السعر بين العميل والسائق"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "2500 ريال",
              style: TextStyle(color: ColorManager.prime),
              textDirection: TextDirection.rtl,
            ),
            SizedBox(width: 8),
            Text("السعر الحالي"),
          ],
        ),
      ],
    );
  }
}
