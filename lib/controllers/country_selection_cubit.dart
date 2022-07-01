import 'package:bloc/bloc.dart';
import 'package:country_picker/country_picker.dart';



class CountrySelectionCubit extends Cubit<Country> {
  CountrySelectionCubit() : super(CountryService().getAll()[0]);
  selectedCountry(Country country)
  {
    emit(country);
  }
}
