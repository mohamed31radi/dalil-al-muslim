// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/my_provider.dart';
import 'package:islami_app/quran/aya_item.dart';
import 'package:islami_app/quran/sura_name_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../my_theme.dart';

class SuraDetails extends StatefulWidget {
  static String routeName = 'sura details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> ayaat = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    SuraDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (ayaat.isEmpty) {
      loadFiles(args.index);
    }
    return Stack(children: [
      Image.asset(
        provider.changeBackgroundImage(),
        fit: BoxFit.cover,
        width: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.app_title,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: Column(
          children: [
            Divider(
              thickness: 3,
              color: Theme.of(context).primaryColor,
            ),
            Text(
              args.suraName,
              style: Theme.of(context).textTheme.subtitle2,
              textAlign: TextAlign.center,
            ),
            Divider(
              thickness: 3,
              color: Theme.of(context).primaryColor,
            ),
            Expanded(
              child: ayaat.length == 0
                  ? Center(child: CircularProgressIndicator())
                  : Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onBackground,
                          borderRadius: BorderRadiusDirectional.circular(20)),
                      margin: EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: ListView.separated(
                          itemCount: ayaat.length,
                          itemBuilder: (context, index) {
                            return AyaItem(ayaat[index], index);
                          },
                          separatorBuilder: (context, index) {
                            return Divider(
                              color: Theme.of(context).primaryColor,
                              indent: 20,
                              endIndent: 20,
                            );
                          },
                        ),
                      ),
                    ),
            )
          ],
        ),
      ),
    ]);
  }

  void loadFiles(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    ayaat = lines;
    setState(() {});
  }
}
