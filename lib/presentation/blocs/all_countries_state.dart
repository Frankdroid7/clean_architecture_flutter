import 'package:clean_architecture_flutter/presentation/models/country_ui_model.dart';

sealed class CountryState {
  const CountryState();
}

class CountriesInitialState extends CountryState {}

class CountriesLoadingState extends CountryState {}

class CountriesTextFieldErrorState extends CountryState {
  String errorMsg;

  CountriesTextFieldErrorState({required this.errorMsg});
}

class CountriesErrorState extends CountryState {
  String errorMsg;

  CountriesErrorState({required this.errorMsg});
}

class CountriesLoadedState extends CountryState {
  final List<CountryUIModel> uiModelList;

  const CountriesLoadedState(this.uiModelList);
}

extension CountryStateExtension on CountryState {
  String? get textFieldErrorMsg =>
      this is CountriesTextFieldErrorState ? (this as CountriesTextFieldErrorState).errorMsg : null;
}
