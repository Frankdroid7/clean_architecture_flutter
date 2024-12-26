// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_domain_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCountryDomainModelCollection on Isar {
  IsarCollection<CountryDomainModel> get countryDomainModels =>
      this.collection();
}

const CountryDomainModelSchema = CollectionSchema(
  name: r'CountryDomainModel',
  id: -1677688416594854927,
  properties: {
    r'area': PropertySchema(
      id: 0,
      name: r'area',
      type: IsarType.double,
    ),
    r'capital': PropertySchema(
      id: 1,
      name: r'capital',
      type: IsarType.stringList,
    ),
    r'continent': PropertySchema(
      id: 2,
      name: r'continent',
      type: IsarType.stringList,
    ),
    r'currencySymbol': PropertySchema(
      id: 3,
      name: r'currencySymbol',
      type: IsarType.string,
    ),
    r'flag': PropertySchema(
      id: 4,
      name: r'flag',
      type: IsarType.string,
    ),
    r'independent': PropertySchema(
      id: 5,
      name: r'independent',
      type: IsarType.bool,
    ),
    r'landLocked': PropertySchema(
      id: 6,
      name: r'landLocked',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 7,
      name: r'name',
      type: IsarType.string,
    ),
    r'population': PropertySchema(
      id: 8,
      name: r'population',
      type: IsarType.long,
    )
  },
  estimateSize: _countryDomainModelEstimateSize,
  serialize: _countryDomainModelSerialize,
  deserialize: _countryDomainModelDeserialize,
  deserializeProp: _countryDomainModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'name': IndexSchema(
      id: 879695947855722453,
      name: r'name',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'name',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _countryDomainModelGetId,
  getLinks: _countryDomainModelGetLinks,
  attach: _countryDomainModelAttach,
  version: '3.1.0+1',
);

int _countryDomainModelEstimateSize(
  CountryDomainModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.capital.length * 3;
  {
    for (var i = 0; i < object.capital.length; i++) {
      final value = object.capital[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.continent.length * 3;
  {
    for (var i = 0; i < object.continent.length; i++) {
      final value = object.continent[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.currencySymbol.length * 3;
  bytesCount += 3 + object.flag.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _countryDomainModelSerialize(
  CountryDomainModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.area);
  writer.writeStringList(offsets[1], object.capital);
  writer.writeStringList(offsets[2], object.continent);
  writer.writeString(offsets[3], object.currencySymbol);
  writer.writeString(offsets[4], object.flag);
  writer.writeBool(offsets[5], object.independent);
  writer.writeBool(offsets[6], object.landLocked);
  writer.writeString(offsets[7], object.name);
  writer.writeLong(offsets[8], object.population);
}

CountryDomainModel _countryDomainModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CountryDomainModel(
    area: reader.readDouble(offsets[0]),
    capital: reader.readStringList(offsets[1]) ?? [],
    continent: reader.readStringList(offsets[2]) ?? [],
    currencySymbol: reader.readString(offsets[3]),
    flag: reader.readString(offsets[4]),
    independent: reader.readBool(offsets[5]),
    landLocked: reader.readBool(offsets[6]),
    name: reader.readString(offsets[7]),
    population: reader.readLong(offsets[8]),
  );
  object.id = id;
  return object;
}

P _countryDomainModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readStringList(offset) ?? []) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _countryDomainModelGetId(CountryDomainModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _countryDomainModelGetLinks(
    CountryDomainModel object) {
  return [];
}

void _countryDomainModelAttach(
    IsarCollection<dynamic> col, Id id, CountryDomainModel object) {
  object.id = id;
}

extension CountryDomainModelQueryWhereSort
    on QueryBuilder<CountryDomainModel, CountryDomainModel, QWhere> {
  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterWhere> anyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'name'),
      );
    });
  }
}

extension CountryDomainModelQueryWhere
    on QueryBuilder<CountryDomainModel, CountryDomainModel, QWhereClause> {
  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterWhereClause>
      nameEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [name],
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterWhereClause>
      nameNotEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterWhereClause>
      nameGreaterThan(
    String name, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [name],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterWhereClause>
      nameLessThan(
    String name, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [],
        upper: [name],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterWhereClause>
      nameBetween(
    String lowerName,
    String upperName, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [lowerName],
        includeLower: includeLower,
        upper: [upperName],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterWhereClause>
      nameStartsWith(String NamePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [NamePrefix],
        upper: ['$NamePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterWhereClause>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [''],
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterWhereClause>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'name',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'name',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'name',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'name',
              upper: [''],
            ));
      }
    });
  }
}

extension CountryDomainModelQueryFilter
    on QueryBuilder<CountryDomainModel, CountryDomainModel, QFilterCondition> {
  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      areaEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'area',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      areaGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'area',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      areaLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'area',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      areaBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'area',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      capitalElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'capital',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      capitalElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'capital',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      capitalElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'capital',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      capitalElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'capital',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      capitalElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'capital',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      capitalElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'capital',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      capitalElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'capital',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      capitalElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'capital',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      capitalElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'capital',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      capitalElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'capital',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      capitalLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'capital',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      capitalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'capital',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      capitalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'capital',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      capitalLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'capital',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      capitalLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'capital',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      capitalLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'capital',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      continentElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'continent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      continentElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'continent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      continentElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'continent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      continentElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'continent',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      continentElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'continent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      continentElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'continent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      continentElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'continent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      continentElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'continent',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      continentElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'continent',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      continentElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'continent',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      continentLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'continent',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      continentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'continent',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      continentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'continent',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      continentLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'continent',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      continentLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'continent',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      continentLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'continent',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      currencySymbolEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currencySymbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      currencySymbolGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currencySymbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      currencySymbolLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currencySymbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      currencySymbolBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currencySymbol',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      currencySymbolStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'currencySymbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      currencySymbolEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'currencySymbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      currencySymbolContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'currencySymbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      currencySymbolMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'currencySymbol',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      currencySymbolIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currencySymbol',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      currencySymbolIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'currencySymbol',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      flagEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      flagGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'flag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      flagLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'flag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      flagBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'flag',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      flagStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'flag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      flagEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'flag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      flagContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'flag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      flagMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'flag',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      flagIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flag',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      flagIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'flag',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      independentEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'independent',
        value: value,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      landLockedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'landLocked',
        value: value,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      populationEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'population',
        value: value,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      populationGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'population',
        value: value,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      populationLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'population',
        value: value,
      ));
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterFilterCondition>
      populationBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'population',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CountryDomainModelQueryObject
    on QueryBuilder<CountryDomainModel, CountryDomainModel, QFilterCondition> {}

extension CountryDomainModelQueryLinks
    on QueryBuilder<CountryDomainModel, CountryDomainModel, QFilterCondition> {}

extension CountryDomainModelQuerySortBy
    on QueryBuilder<CountryDomainModel, CountryDomainModel, QSortBy> {
  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      sortByArea() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'area', Sort.asc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      sortByAreaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'area', Sort.desc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      sortByCurrencySymbol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencySymbol', Sort.asc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      sortByCurrencySymbolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencySymbol', Sort.desc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      sortByFlag() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flag', Sort.asc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      sortByFlagDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flag', Sort.desc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      sortByIndependent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'independent', Sort.asc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      sortByIndependentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'independent', Sort.desc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      sortByLandLocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'landLocked', Sort.asc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      sortByLandLockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'landLocked', Sort.desc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      sortByPopulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'population', Sort.asc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      sortByPopulationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'population', Sort.desc);
    });
  }
}

extension CountryDomainModelQuerySortThenBy
    on QueryBuilder<CountryDomainModel, CountryDomainModel, QSortThenBy> {
  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      thenByArea() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'area', Sort.asc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      thenByAreaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'area', Sort.desc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      thenByCurrencySymbol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencySymbol', Sort.asc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      thenByCurrencySymbolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencySymbol', Sort.desc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      thenByFlag() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flag', Sort.asc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      thenByFlagDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flag', Sort.desc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      thenByIndependent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'independent', Sort.asc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      thenByIndependentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'independent', Sort.desc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      thenByLandLocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'landLocked', Sort.asc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      thenByLandLockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'landLocked', Sort.desc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      thenByPopulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'population', Sort.asc);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QAfterSortBy>
      thenByPopulationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'population', Sort.desc);
    });
  }
}

extension CountryDomainModelQueryWhereDistinct
    on QueryBuilder<CountryDomainModel, CountryDomainModel, QDistinct> {
  QueryBuilder<CountryDomainModel, CountryDomainModel, QDistinct>
      distinctByArea() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'area');
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QDistinct>
      distinctByCapital() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'capital');
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QDistinct>
      distinctByContinent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'continent');
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QDistinct>
      distinctByCurrencySymbol({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currencySymbol',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QDistinct>
      distinctByFlag({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'flag', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QDistinct>
      distinctByIndependent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'independent');
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QDistinct>
      distinctByLandLocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'landLocked');
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CountryDomainModel, CountryDomainModel, QDistinct>
      distinctByPopulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'population');
    });
  }
}

extension CountryDomainModelQueryProperty
    on QueryBuilder<CountryDomainModel, CountryDomainModel, QQueryProperty> {
  QueryBuilder<CountryDomainModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CountryDomainModel, double, QQueryOperations> areaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'area');
    });
  }

  QueryBuilder<CountryDomainModel, List<String>, QQueryOperations>
      capitalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'capital');
    });
  }

  QueryBuilder<CountryDomainModel, List<String>, QQueryOperations>
      continentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'continent');
    });
  }

  QueryBuilder<CountryDomainModel, String, QQueryOperations>
      currencySymbolProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currencySymbol');
    });
  }

  QueryBuilder<CountryDomainModel, String, QQueryOperations> flagProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flag');
    });
  }

  QueryBuilder<CountryDomainModel, bool, QQueryOperations>
      independentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'independent');
    });
  }

  QueryBuilder<CountryDomainModel, bool, QQueryOperations>
      landLockedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'landLocked');
    });
  }

  QueryBuilder<CountryDomainModel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<CountryDomainModel, int, QQueryOperations> populationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'population');
    });
  }
}
