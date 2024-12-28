import 'package:flutter/material.dart';

class UnSelectedItem extends StatelessWidget {
  String title;
  UnSelectedItem(this.title);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}