import 'package:alextask/core/manager/asser_manager.dart';
import 'package:alextask/feature/Description/presenation/viewModel/Cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
}
