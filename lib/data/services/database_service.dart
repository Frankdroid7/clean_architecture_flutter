import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../barrel_file.dart';

class DatabaseService {
  late final Isar _isar;
  Isar get isar => _isar;

  Future openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open([CountryDomainModelSchema], directory: dir.path);
  }

  Future saveCountryDomainModels(List<CountryDomainModel> countryDomainModels) async {
    await _isar.writeTxn(() async {
      await _isar.countryDomainModels.putAll(countryDomainModels);
    });
  }

  Future<List<CountryDomainModel>> getCountryDomainModels() async {
    return await _isar.countryDomainModels.where().findAll();
  }
}
