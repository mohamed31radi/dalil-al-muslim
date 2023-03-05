import 'package:flutter/material.dart';

import '../my_theme.dart';

class SebhaCounter extends StatelessWidget {
  int counter;

  SebhaCounter(this.counter);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 80),
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadiusDirectional.circular(60),
        ),
        child: Center(
          child: Text(
            '$counter',
            style: TextStyle(fontSize: 45, color: MyThemeData.colorWhite),
            textAlign: TextAlign.center,
          ),
        ));
  }
}
