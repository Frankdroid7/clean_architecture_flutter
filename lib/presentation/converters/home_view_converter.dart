import 'package:clean_architecture_flutter/domain/countries_domain_model.dart';
import 'package:number_to_words/number_to_words.dart';

import '../../core/converters/abstract_converter.dart';
import '../models/models.dart';

class HomeViewCountryConverter implements Converter<CountryUIModel, CountryDomainModel> {
  @override
  CountryUIModel convert(CountryDomainModel model) {
    return CountryUIModel(
      name: model.name,
      capital: model.capital.isNotEmpty ? model.capital[0] : '',
      flag: model.flag,
      population: NumberToWord().convert('en-in', model.population.toInt()),
      continent: model.continent.isNotEmpty ? model.continent[0] : '',
      currencySymbol: model.currencySymbol,
      independent: model.independent,
      landLocked: model.landLocked,
      language: model.languages.values.isNotEmpty ? model.languages.values.first : '',
    );
  }
}
