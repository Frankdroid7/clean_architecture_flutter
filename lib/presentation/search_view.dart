import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../barrel_file.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final TextEditingController textFieldCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeViewModel, CountryState>(
          builder: (context, CountryState state) {
            return Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: textFieldCtrl,
                        decoration: InputDecoration(
                          errorText: state.textFieldErrorMsg,
                          hintText: 'Search country by name, capital, code, currency...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => context.read<HomeViewModel>().add(
                            GetCountryIdentifier(textFieldCtrl.text),
                          ),
                      child: const Text('Get Country'),
                    ),
                  ],
                ),
                Expanded(
                    child: switch (state) {
                  CountriesInitialState() => const SizedBox.shrink(),
                  CountriesTextFieldErrorState() => const SizedBox.shrink(),
                  CountriesLoadingState() => const Center(child: CircularProgressIndicator()),
                  CountriesErrorState(errorMsg: String errorMsg) => RetryView(msg: errorMsg),
                  CountriesLoadedState(uiModelList: List<CountryUIModel> uiModelList) =>
                    CountriesLoadedStateWidget(uiModelList: uiModelList),
                }),
              ],
            );
          },
        ),
      ),
    );
  }
}
