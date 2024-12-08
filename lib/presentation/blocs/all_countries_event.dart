sealed class CountryEvent {}

class GetAllCountriesEvent extends CountryEvent {}

class GetCountryIdentifier extends CountryEvent {
  final String text;
  GetCountryIdentifier(this.text);
}
