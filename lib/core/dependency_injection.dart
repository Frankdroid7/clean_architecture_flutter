import 'package:clean_architecture_flutter/barrel_file.dart';
import 'package:get_it/get_it.dart';

GetIt injector = GetIt.instance;

setUpDependencyInjection() {
  injector.registerLazySingleton<ApiClient>(() => ApiClient());
  injector.registerLazySingleton<DatabaseService>(() => DatabaseService());
  injector.registerLazySingleton<CountryRepository>(
      () => CountryRepositoryImpl(apiClient: injector(), databaseService: injector()));
  injector.registerFactory<HomeViewModel>(() => HomeViewModel(allCountriesRepository: injector()));
}
