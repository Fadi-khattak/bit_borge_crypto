import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class NewsControllerCubit extends Cubit<int> {
  NewsControllerCubit() : super(0);
  updateSelectedIndex(int index) {
    emit(index);
  }
}
