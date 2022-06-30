import 'package:bloc/bloc.dart';

class SignalTabsControllerCubit extends Cubit<int> {
  SignalTabsControllerCubit() : super(0);
  selectedIndex(int index)
  {
    emit(index);
  }
}
