import 'package:clean_architecture_flutter/domain/countries_domain_model.dart';

abstract class CountryRepository {
  Future<List<CountryDomainModel>> getAllCountries();
  Future<List<CountryDomainModel>> getCountryByIdentifier(String text);
}
