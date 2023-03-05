import 'package:flutter/material.dart';
import 'package:islami_app/hadeth/ahadeth_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/my_provider.dart';
import 'package:provider/provider.dart';
import '../my_theme.dart';

class HadethDetails extends StatelessWidget {
  const HadethDetails({Key? key}) : super(key: key);
  static String routeName = 'hadeth details';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    var arg = ModalRoute.of(context)?.settings.arguments as HadethData;
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
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onBackground,
                    borderRadius: BorderRadiusDirectional.circular(20)),
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: ListView.separated(
                    itemCount: arg.content.length,
                    itemBuilder: (context, index) {
                      return Text(
                        arg.content[index],
                        style: Theme.of(context).textTheme.subtitle2,
                        textAlign: TextAlign.center,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: MyThemeData.colorGold,
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
}
