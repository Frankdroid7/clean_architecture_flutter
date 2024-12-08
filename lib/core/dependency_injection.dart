import 'package:clean_architecture_flutter/data/repositories/countries_repository_impl.dart';
import 'package:clean_architecture_flutter/data/services/api_client.dart';
import 'package:get_it/get_it.dart';

import '../data/repositories/countries_repository.dart';
import '../presentation/blocs/home_view_viewmodel.dart';

GetIt injector = GetIt.instance;

setUpDependencyInjection() {
  injector.registerLazySingleton<ApiClient>(() => ApiClient());
  injector
      .registerLazySingleton<CountryRepository>(() => CountryRepositoryImpl(apiClient: injector()));
  injector.registerFactory<HomeViewModel>(() => HomeViewModel(allCountriesRepository: injector()));
}
