import '../../barrel_file.dart';

abstract class CountryRepository {
  Future<List<CountryDomainModel>> getAllCountries({required FetchPolicy fetchPolicy});
  Future<List<CountryDomainModel>> getCountryByIdentifier(String text);
}
