import '../../../../../core/manager/asser_manager.dart';
import 'state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayOutcubit extends Cubit<LayOutState> {
  LayOutcubit() : super(IniteState());
  static LayOutcubit get(context) => BlocProvider.of(context);
  final List<String> views = [
    AssetManager.homeSVG,
    AssetManager.checkListSVG,
    AssetManager.chatSVG,
    AssetManager.dotsSVG,
  ];
  String selectedView = AssetManager.homeSVG;
  changeView({required String newView}) {
    selectedView = newView;
    emit(ChangeBottomNavigationBarItemState());
  }
}
