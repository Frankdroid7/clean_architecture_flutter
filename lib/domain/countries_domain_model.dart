import 'package:isar/isar.dart';

///TODO: Convert to freezed

part 'countries_domain_model.g.dart';

@collection
class CountryDomainModel {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  final String name;
  final List<String> capital;
  final String flag;
  final int population;
  final List<String> continent;
  final String currencySymbol;
  final bool independent;
  final bool landLocked;
  final double area;
  @ignore
  final Map<String, dynamic> languages;

  CountryDomainModel({
    required this.name,
    required this.capital,
    required this.flag,
    required this.population,
    required this.continent,
    required this.currencySymbol,
    required this.independent,
    required this.landLocked,
    required this.area,
    this.languages = const {},
  });

  factory CountryDomainModel.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> currencies = json['currencies'] ?? {};
    return CountryDomainModel(
      name: json['name']['common'] ?? '',
      capital: List<String>.from(json['capital'] ?? []),
      flag: json['flag'] ?? '',
      population: json['population'] ?? 0,
      continent: List<String>.from(json['continents'] ?? []),
      currencySymbol:
          currencies.isNotEmpty ? json['currencies'][currencies.keys.first]['symbol'] : '',
      independent: json['independent'] ?? false,
      landLocked: json['landLocked'] ?? false,
      area: json['area'] ?? 0,
      languages: json['languages'] ?? {},
    );
  }
}
