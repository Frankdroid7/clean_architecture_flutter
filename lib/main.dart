import 'package:clean_architecture_flutter/presentation/blocs/all_countries_event.dart';
import 'package:clean_architecture_flutter/presentation/blocs/home_view_viewmodel.dart';
import 'package:clean_architecture_flutter/presentation/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/dependency_injection.dart';

void main() {
  setUpDependencyInjection();
  runApp(
    BlocProvider(
      create: (BuildContext context) => injector<HomeViewModel>()..add(GetAllCountriesEvent()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}
