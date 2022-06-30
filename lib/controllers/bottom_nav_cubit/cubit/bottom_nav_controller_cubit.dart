import 'package:bloc/bloc.dart';

class BottomNavControllerCubit extends Cubit<int> {
  BottomNavControllerCubit() : super(1);
  selectIndex(int index) {
    emit(index);
  }
}
