import 'package:collection/collection.dart';
import 'package:isar/isar.dart';

import '../../barrel_file.dart';

typedef GetCountryFunc = Future<List<Map<String, dynamic>>> Function(String text);

class CountryRepositoryImpl implements CountryRepository {
  final ApiClient _apiClient;
  final DatabaseService _databaseService;

  const CountryRepositoryImpl(
      {required ApiClient apiClient, required DatabaseService databaseService})
      : _apiClient = apiClient,
        _databaseService = databaseService;

  @override
  Future<List<CountryDomainModel>> getAllCountries({required FetchPolicy fetchPolicy}) async {
    switch (fetchPolicy) {
      case FetchPolicy.network:
        return _getAllCountriesFromNetwork();
      case FetchPolicy.databaseFirst:
        Isar isar = _databaseService.isar;
        if (isar.isOpen) {
          bool dbHasCountryDomainModels =
              await _databaseService.isar.countryDomainModels.where().isNotEmpty();

          if (dbHasCountryDomainModels) {
            return _databaseService.isar.countryDomainModels.where().findAll();
          }
        }
        return _getAllCountriesFromNetwork();
    }
  }

  Future<List<CountryDomainModel>> _getAllCountriesFromNetwork() async {
    try {
      List<dynamic> countries = await _apiClient.getAllCountries();
      List<CountryDomainModel> countryDomainModels =
          countries.map((element) => CountryDomainModel.fromJson(element)).toList();
      _databaseService.saveCountryDomainModels(countryDomainModels);
      return countryDomainModels;
    } on CountriesException {
      rethrow;
    } catch (e) {
      throw CountriesException('Bad data formatting $e');
    }
  }

  // TODO: Add try catch
  @override
  Future<List<CountryDomainModel>> getCountryByIdentifier(String text) async {
    /* get identifiers in json form, like:
    * {
    * "name": true,
    * "capital": true,
    * "language": false
    * }
    * */
    var identifiers = await _apiClient.getCountryIdentifier(text);

    // Get first identifier that has a true value
    if (identifiers != null) {
      String? identifier = Map<String, bool>.from(identifiers)
          .entries
          .firstWhereOrNull((entry) => entry.value == true)
          ?.key;

      if (identifier != null) {
        // Get the function that corresponds with the identifier;
        final GetCountryFunc getCountryFunc = _identifierMap(_apiClient)
            .entries
            .firstWhere((element) => element.key == identifier)
            .value;

        List<Map<String, dynamic>> countries = await getCountryFunc(text);
        return countries.map((element) => CountryDomainModel.fromJson(element)).toList();
      }
    }

    throw GeminiException('Gemini response bad data formatting');
  }
}

Map<String, GetCountryFunc> Function(ApiClient apiClient) _identifierMap = (apiClient) {
  return {
    "name": apiClient.getCountryByName,
    "capital": apiClient.getCountryByCapital,
    "language": apiClient.getCountryByLanguage,
    "code": apiClient.getCountryByCode,
    "currency": apiClient.getCountryByCurrency,
    "region": apiClient.getCountryByRegion,
    "subregion": apiClient.getCountryBySubRegion,
    "demonym": apiClient.getCountryByDemonym,
    "translation": apiClient.getCountryByTranslation,
  };
};