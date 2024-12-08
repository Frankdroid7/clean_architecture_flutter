import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  final String title;
  final String value;
  const HomeItem({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Expanded(child: Align(alignment: Alignment.centerRight, child: Text(value))),
      ],
    );
  }
}
