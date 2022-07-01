import 'package:bloc/bloc.dart';


class SplashControllerCubit extends Cubit<bool> {
  SplashControllerCubit() : super(false);
  startSplash(bool start)
  {
    emit(start);
  }
}
