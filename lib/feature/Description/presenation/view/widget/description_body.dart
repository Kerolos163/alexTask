import '../../../../../core/manager/asser_manager.dart';
import '../../../../../core/manager/color_manager.dart';
import '../../../../../core/my_device.dart';
import 'from_to_location_widget.dart';
import 'from_to_time_widget.dart';
import 'indicators_widget.dart';
import 'info_row_item.dart';
import 'user_info.dart';
import '../../viewModel/Cubit/cubit.dart';
import '../../viewModel/Cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DescriptionBody extends StatelessWidget {
  const DescriptionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DescriptionCubit, DescriptionState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 28),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 16),
                SizedBox(
                  height: 180,
                  child: PageView.builder(
                    itemBuilder: (context, index) => ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child:
                          Image.asset(AssetManager.box, fit: BoxFit.fitWidth),
                    ),
                    onPageChanged: (value) {
                      DescriptionCubit.get(context)
                          .changeCurrentIndex(newIndex: value);
                    },
                    itemCount: DescriptionCubit.get(context).imgs.length,
                  ),
                ),
                const SizedBox(height: 10),
                IndicatorsWidget(
                  currentIndex: DescriptionCubit.get(context).currentindex,
                ),
                const SizedBox(height: 12),
                const UserInfo(),
                const SizedBox(height: 18),
                const FromToLocationWidget(
                  title1: "موقع التحميل",
                  txt1: "1097 Daju Ridge",
                  title2: "موقع التنزيل",
                  txt2: "1097 Daju Ridge",
                ),
                myDivider(),
                const FromToTimeWidget(
                  title1: "وقت التحميل",
                  date1: "04 Jul 2021",
                  time1: "12:12PM",
                  title2: "وقت التسليم",
                  date2: "04 Jul 2021",
                  time2: "11:48AM",
                ),
                myDivider(),
                const InfoRowItem(
                  txt1: "وزن الشحنة",
                  txt2: "100 طن",
                  img: AssetManager.boxSVG,
                ),
                myDivider(),
                const InfoRowItem(
                  txt1: "عدد الحاويات ",
                  txt2: "60 صندوق",
                  img: AssetManager.boxSVG,
                ),
                myDivider(),
                const InfoRowItem(
                  txt1: "عدد المركبات ",
                  txt2: "40 شاحنة",
                  img: AssetManager.truckSVG,
                ),
                myDivider(),
                const InfoRowItem(
                  txt1: "نوع المركبات",
                  txt2: "دينا - دينا بطحاء",
                  img: AssetManager.truckSVG,
                ),
                myDivider(),
                const Text(
                  "اريد توصيل شحنة خشب الي ميناء جدة  وزن الشحنة 100 طن …",
                  style: TextStyle(color: ColorManager.gray2, fontSize: 14),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                    height: DescriptionCubit.get(context).isOpen
                        ? MyDevice.getHeigh(context) <
                                750 //to handle Problem in small Device
                            ? MyDevice.getHeigh(context) / 3.3
                            : MyDevice.getHeigh(context) / 4
                        : MyDevice.getHeigh(context) / 25)
              ],
            ),
          ),
        );
      },
    );
  }

  myDivider() {
    return const Padding(
      padding: EdgeInsets.only(top: 26),
      child: Divider(height: 30, color: ColorManager.gray),
    );
  }
}
