import 'package:clean_architecture_flutter/barrel_file.dart';
import 'package:clean_architecture_flutter/presentation/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchPage()));
      }),
      body: SafeArea(
        child: BlocBuilder<HomeViewModel, CountryState>(
          builder: (context, CountryState state) {
            switch (state) {
              case CountriesInitialState():
                return const SizedBox.shrink();
              case CountriesTextFieldErrorState():
                return const SizedBox.shrink();
              case CountriesLoadingState():
                return const Center(child: CircularProgressIndicator());
              case CountriesErrorState(errorMsg: String errorMsg):
                return RetryView(msg: errorMsg);
              case CountriesLoadedState(uiModelList: List<CountryUIModel> uiModelList):
                return CountriesLoadedStateWidget(uiModelList: uiModelList);
            }
          },
        ),
      ),
    );
  }
}
