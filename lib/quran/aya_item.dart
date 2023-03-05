import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';

class AyaItem extends StatelessWidget {
  String aya;
  int ayaNumber;

  AyaItem(this.aya, this.ayaNumber);

  @override
  Widget build(BuildContext context) {
    return Text(
      '(${ayaNumber + 1})$aya',
      style: Theme.of(context).textTheme.subtitle2,
      textAlign: TextAlign.center,
    );
  }
}
