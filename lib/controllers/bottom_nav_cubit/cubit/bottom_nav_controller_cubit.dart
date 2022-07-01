import 'package:bloc/bloc.dart';

class BottomNavControllerCubit extends Cubit<int> {
  BottomNavControllerCubit() : super(0);
  selectIndex(int index) {
    emit(index);
  }
}
