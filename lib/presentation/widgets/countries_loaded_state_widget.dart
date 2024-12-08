import 'package:clean_architecture_flutter/barrel_file.dart';
import 'package:flutter/material.dart';

class CountriesLoadedStateWidget extends StatelessWidget {
  const CountriesLoadedStateWidget({super.key, required this.uiModelList});

  final List<CountryUIModel> uiModelList;

  @override
  Widget build(BuildContext context) {
    if (uiModelList.isEmpty) return const RetryView(msg: 'There is no data');
    return ListView(
      children: uiModelList.map((uiModel) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              HomeItem(title: 'Name', value: uiModel.name),
              HomeItem(title: 'Flag', value: uiModel.flag),
              HomeItem(title: 'Capital', value: uiModel.capital),
              HomeItem(title: 'Language', value: uiModel.language),
              HomeItem(title: 'Are independent', value: uiModel.independent.toString()),
              HomeItem(title: 'Population', value: uiModel.population),
              HomeItem(title: 'Is land locked', value: uiModel.landLocked.toString()),
              HomeItem(title: 'Currency Symbol', value: uiModel.currencySymbol),
              HomeItem(title: 'Continent', value: uiModel.continent),
            ],
          ),
        );
      }).toList(),
    );
  }
}
