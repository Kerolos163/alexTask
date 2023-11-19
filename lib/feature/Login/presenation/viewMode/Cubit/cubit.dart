import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(IniteState());
  static LoginCubit get(context) => BlocProvider.of(context);
  bool isVisiable = true;
  changeVisibility() {
    isVisiable = !isVisiable;
    emit(ChangeVisibilityState());
  }
}
