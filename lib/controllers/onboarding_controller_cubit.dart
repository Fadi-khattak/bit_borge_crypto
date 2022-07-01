import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class OnboardingControllerCubit extends Cubit<int> {
  OnboardingControllerCubit() : super(0);
  changeIndex(int index) {
    emit(index);
  }
}
