import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class VerificationControllerCubit extends Cubit<bool> {
  VerificationControllerCubit() : super(false);
  checkCompletion(String code)
  {

    if(code.length==4) {
      print(code.length);
      emit(true);
    }
    else{
      emit(false);
    }
  }
}
