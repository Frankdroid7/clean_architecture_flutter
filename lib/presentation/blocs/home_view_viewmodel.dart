import 'package:clean_architecture_flutter/barrel_file.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewModel extends Bloc<CountryEvent, CountryState> {
  final CountryRepository _countriesRepository;

  HomeViewModel({required CountryRepository allCountriesRepository})
      : _countriesRepository = allCountriesRepository,
        super(CountriesInitialState()) {
    on<GetAllCountriesEvent>(_getAllCountries);
    on<GetCountryIdentifier>(_getCountryIdentifier);
  }

  Future<void> _getAllCountries(GetAllCountriesEvent event, Emitter<CountryState> emit) async {
    emit(CountriesLoadingState());

    try {
      List<CountryDomainModel> countriesDomainModel =
          await _countriesRepository.getAllCountries(fetchPolicy: event.fetchPolicy);

      List<CountryUIModel> allCountriesUIModel = countriesDomainModel.map((model) {
        CountryUIModel countryUIModel = HomeViewCountryConverter().convert(model);

        return countryUIModel;
      }).toList();
      emit(CountriesLoadedState(allCountriesUIModel));
    } on CountriesException catch (e) {
      emit(CountriesErrorState(errorMsg: e.errorMsg));
    } catch (e) {
      emit(CountriesErrorState(errorMsg: 'Unknown error'));
    }
  }

  Future<void> _getCountryIdentifier(GetCountryIdentifier event, Emitter<CountryState> emit) async {
    emit(CountriesLoadingState());

    try {
      List<CountryDomainModel> countriesDomainModel =
          await _countriesRepository.getCountryByIdentifier(event.text);

      List<CountryUIModel> allCountriesUIModel = countriesDomainModel.map((model) {
        CountryUIModel countryUIModel = HomeViewCountryConverter().convert(model);

        return countryUIModel;
      }).toList();
      emit(CountriesLoadedState(allCountriesUIModel));
    } on GeminiException catch (_) {
      emit(CountriesTextFieldErrorState(errorMsg: 'Enter a valid input'));
    } on CountriesException catch (e) {
      emit(CountriesErrorState(errorMsg: e.errorMsg));
    } catch (e) {
      emit(CountriesErrorState(errorMsg: 'Unknown error'));
    }
  }
}
