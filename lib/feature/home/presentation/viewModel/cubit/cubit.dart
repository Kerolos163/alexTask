import 'package:alextask/feature/home/presentation/viewModel/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(IniteState());
  static HomeCubit get(context) => BlocProvider.of(context);
  final List<String> items = ["الطلبات", "الجارية", "المنتهيه", "الملغاة"];
  String selectedItem = "الطلبات";
  changeSelectedItem({required String newItem}) {
    selectedItem = newItem;
    emit(ChangeSelectedItemState());
  }
}
