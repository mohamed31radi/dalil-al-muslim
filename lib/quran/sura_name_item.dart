import 'package:flutter/material.dart';
import 'package:islami_app/quran/sura_details.dart';

class SuraNameItem extends StatelessWidget {
  String suraName;
  int index;

  SuraNameItem(this.suraName, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.routeName,
            arguments: SuraDetailsArgs(suraName, index));
      },
      child: Text(
        suraName,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}

class SuraDetailsArgs {
  String suraName;
  int index;

  SuraDetailsArgs(this.suraName, this.index);
}
