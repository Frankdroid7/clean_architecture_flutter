import 'package:collection/collection.dart';

import '../../barrel_file.dart';

typedef GetCountryFunc = Future<List<Map<String, dynamic>>> Function(String text);

class CountryRepositoryImpl implements CountryRepository {
  final ApiClient _apiClient;

  const CountryRepositoryImpl({required ApiClient apiClient}) : _apiClient = apiClient;

  @override
  Future<List<CountryDomainModel>> getAllCountries() async {
    try {
      List<dynamic> countries = await _apiClient.getAllCountries();
      return countries.map((element) => CountryDomainModel.fromJson(element)).toList();
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
