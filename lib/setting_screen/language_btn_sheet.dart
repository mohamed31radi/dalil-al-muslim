import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/my_provider.dart';
import 'package:islami_app/my_theme.dart';
import 'package:provider/provider.dart';

class LanguageBtnSheet extends StatelessWidget {
  const LanguageBtnSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage('en');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'English',
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: provider.language == 'en'
                          ? Theme.of(context).primaryColor
                          : MyThemeData.colorBlack),
                ),
                Icon(Icons.done,
                    size: 30,
                    color: provider.language == 'en'
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).colorScheme.background),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage('ar');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "اللغة العربية",
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: provider.language == 'ar'
                          ? Theme.of(context).primaryColor
                          : MyThemeData.colorBlack),
                ),
                Icon(Icons.done,
                    size: 30,
                    color: provider.language == 'ar'
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).colorScheme.background),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
