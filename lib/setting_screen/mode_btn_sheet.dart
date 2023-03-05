import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../my_provider.dart';
import '../my_theme.dart';

class ModeBtnSheet extends StatelessWidget {
  const ModeBtnSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeMode(ThemeMode.light);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.light,
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: provider.thMode == ThemeMode.light
                          ? MyThemeData.colorGold
                          : MyThemeData.colorBlack),
                ),
                Icon(Icons.done,
                    size: 30,
                    color: provider.thMode == ThemeMode.light
                        ? MyThemeData.colorGold
                        : MyThemeData.colorGrey),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeMode(ThemeMode.dark);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.dark,
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: provider.thMode == ThemeMode.dark
                          ? MyThemeData.colorYalow
                          : MyThemeData.colorBlack),
                ),
                Icon(Icons.done,
                    size: 30,
                    color: provider.thMode == ThemeMode.dark
                        ? MyThemeData.colorYalow
                        : MyThemeData.colorWhite),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
