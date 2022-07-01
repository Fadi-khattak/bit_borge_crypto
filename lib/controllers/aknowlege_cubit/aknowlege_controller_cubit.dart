import 'package:bloc/bloc.dart';




class AknowlegeControllerCubit extends Cubit<bool> {
  AknowlegeControllerCubit() : super(false);

  changeAknowlegeCheckState(bool isChecked)
  {
    emit(isChecked);
  }
}
