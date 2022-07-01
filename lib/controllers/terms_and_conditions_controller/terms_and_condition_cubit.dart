import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';



class TermsAndConditionCubit extends Cubit<bool> {
  TermsAndConditionCubit() : super(false);
  changeCheckState(bool isChecked)
  {
    emit(isChecked);
  }
}
