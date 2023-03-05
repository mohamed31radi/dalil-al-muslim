import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/my_provider.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/setting_screen/language_btn_sheet.dart';
import 'package:islami_app/setting_screen/mode_btn_sheet.dart';
import 'package:provider/provider.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.all(35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.subtitle1),
          InkWell(
            onTap: () {
              ButtonSheet('lang', context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: Text(
                  provider.language == 'en' ? 'English' : "اللغة العربية",
                  style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      color: provider.thMode == ThemeMode.light
                          ? Colors.black54
                          : Colors.white54)),
            ),
          ),
          SizedBox(height: 15),
          Text(AppLocalizations.of(context)!.mode,
              style: Theme.of(context).textTheme.subtitle1),
          InkWell(
            onTap: () {
              ButtonSheet('mode', context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: Text(
                  provider.thMode == ThemeMode.light
                      ? AppLocalizations.of(context)!.light
                      : AppLocalizations.of(context)!.dark,
                  style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      color: provider.thMode == ThemeMode.light
                          ? Colors.black54
                          : Colors.white54)),
            ),
          ),
        ],
      ),
    );
  }

  void ButtonSheet(String name, BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        if (name == 'lang') {
          return LanguageBtnSheet();
        } else {
          return ModeBtnSheet();
        }
      },
    );
  }
}
