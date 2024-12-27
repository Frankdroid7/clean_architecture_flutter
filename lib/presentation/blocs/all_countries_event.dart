import '../../barrel_file.dart';

sealed class CountryEvent {}

class GetAllCountriesEvent extends CountryEvent {
  final FetchPolicy fetchPolicy;
  GetAllCountriesEvent({this.fetchPolicy = FetchPolicy.databaseFirst});
}

class GetCountryIdentifier extends CountryEvent {
  final String text;

  GetCountryIdentifier(this.text);
}
