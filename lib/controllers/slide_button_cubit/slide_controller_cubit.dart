import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class SlideControllerCubit extends Cubit<bool> {
  SlideControllerCubit() : super(false);
  changeButtonState(bool isExpanded) {
    emit(isExpanded);
  }
}
