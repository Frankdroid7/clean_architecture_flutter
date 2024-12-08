import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../barrel_file.dart';

class RetryView extends StatelessWidget {
  final String msg;
  const RetryView({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(alignment: Alignment.center, child: Text(msg)),
        Center(
          child: ElevatedButton(
              onPressed: () => context.read<HomeViewModel>().add(GetAllCountriesEvent()),
              child: const Text('RETRY')),
        ),
      ],
    );
  }
}
