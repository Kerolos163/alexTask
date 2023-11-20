import '../../../../../core/manager/asser_manager.dart';
import '../../../../../core/manager/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 13),
        const Align(
          alignment: Alignment.centerRight,
          child: Text("تحديد السعر بين العميل والسائق"),
        ),
        const Row(
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
        const SizedBox(height: 16),
        bottomSheetItemsRow()
      ],
    );
  }

  Row bottomSheetItemsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        bottomSheetItem(img: AssetManager.close, txt: "رفض"),
        bottomSheetItem(img: AssetManager.correctSVG, txt: "موافقة"),
        bottomSheetItem(img: AssetManager.offerSVG, txt: "قدم عرض"),
      ],
    );
  }

  Column bottomSheetItem({required String img, required String txt}) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: ColorManager.lightGray),
          ),
          child: SvgPicture.asset(img),
        ),
        const SizedBox(height: 8),
        Text(
          txt,
          style: const TextStyle(fontSize: 14, color: ColorManager.darkBlue),
        )
      ],
    );
  }
}
