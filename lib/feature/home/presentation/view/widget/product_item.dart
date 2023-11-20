import 'package:alextask/core/manager/asser_manager.dart';
import 'package:alextask/core/manager/color_manager.dart';
import 'package:alextask/feature/Description/presenation/view/description_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shadowColor: ColorManager.darkGray,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 200,
        width: double.infinity,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: ColorManager.lightGray, width: 1.5),
          borderRadius: BorderRadius.circular(8),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            var height = constraints.maxHeight;
            var width = constraints.maxWidth;
            return Column(
              children: [
                Expanded(
                  child: infoWithImageRow(width, height),
                ),
                const Text(
                  "اريد توصيل شحنة خشب الي ميناء …",
                  style: TextStyle(color: ColorManager.darkBlue, fontSize: 14),
                  textDirection: TextDirection.ltr,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Divider(
                    color: ColorManager.lightGray,
                    thickness: 1.2,
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(AssetManager.calendar),
                    const Text(
                      "04 Jul 2021",
                      style: TextStyle(color: ColorManager.gray, fontSize: 14),
                      textDirection: TextDirection.ltr,
                    ),
                    const Spacer(),
                    deskcriptionContainer(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const DescriptionView(),
                        ));
                      },
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: ColorManager.gray),
                      ),
                      child: SvgPicture.asset(AssetManager.close),
                    )
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }

  GestureDetector deskcriptionContainer({void Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ColorManager.prime,
        ),
        child: const Text(
          "التفاصيل",
        ),
      ),
    );
  }

  Row infoWithImageRow(double width, double height) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(AssetManager.box,
                width: width / 4.7, height: width / 4.7),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: Text(
                "ابو فهد عبد العزيز",
                style: TextStyle(
                    fontSize: width / 24, color: ColorManager.darkBlue),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  fromToWithDashLineWidget(height),
                  fromToWidget(width)
                ],
              ),
            )
          ],
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 2),
            child: Container(
              alignment: Alignment.center,
              height: height / 4,
              width: width / 5,
              decoration: BoxDecoration(
                  border: Border.all(color: ColorManager.darkBlue)),
              child: Text("السعر", style: TextStyle(fontSize: width / 15)),
            ),
          ),
        ),
      ],
    );
  }

  Padding fromToWithDashLineWidget(double height) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(children: [
        CircleAvatar(
          radius: height / 24,
          backgroundColor: ColorManager.lightGray,
        ),
        for (int i = 0; i < 3; i++)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.1),
              child: Container(
                width: 3,
                color: ColorManager.lightGray,
              ),
            ),
          ),
        CircleAvatar(
          radius: height / 24,
          backgroundColor: ColorManager.prime,
        )
      ]),
    );
  }

  Padding fromToWidget(double width) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 2),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "1097 Daju Ridge",
          style: TextStyle(color: ColorManager.gray, fontSize: width / 26),
          textDirection: TextDirection.ltr,
        ),
        const Spacer(),
        Text(
          "1283 Cunema Extension",
          style: TextStyle(color: ColorManager.gray, fontSize: width / 26),
          textDirection: TextDirection.ltr,
        ),
      ]),
    );
  }
}
