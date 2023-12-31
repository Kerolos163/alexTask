import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/manager/asser_manager.dart';
import 'state.dart';

class DescriptionCubit extends Cubit<DescriptionState> {
  DescriptionCubit() : super(IniteState());
  static DescriptionCubit get(context) => BlocProvider.of(context);
  final List<String> imgs = [
    AssetManager.box,
    AssetManager.box,
    AssetManager.box,
    AssetManager.box,
  ];
  int currentindex = 0;
  changeCurrentIndex({required int newIndex}) {
    currentindex = newIndex;
    emit(ChangeIndexState());
  }

  bool isOpen = false;
  changeBottomSheet() {
    isOpen = !isOpen;
    log(isOpen.toString());
    emit(ChangeHeightBottomSheetState());
  }
}
