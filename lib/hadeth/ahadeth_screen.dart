import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/hadeth/hadeth_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../my_theme.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethData> hadethItems = [];

  @override
  Widget build(BuildContext context) {
    if (hadethItems.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Image.asset('assets/images/ahadeth_tap_image.png'),
        Divider(
          thickness: 3,
          color: Theme.of(context).primaryColor,
        ),
        Text(
          AppLocalizations.of(context)!.hadeth_name,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Divider(
          thickness: 3,
          color: Theme.of(context).primaryColor,
        ),
        Expanded(
          child: ListView.separated(
            itemCount: hadethItems.length,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      HadethDetails.routeName,
                      arguments: hadethItems[index],
                    );
                  },
                  child: Text(hadethItems[index].title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.subtitle1));
            },
            separatorBuilder: (context, index) => Divider(
              indent: 20,
              endIndent: 20,
              color: Theme.of(context).primaryColor,
            ),
          ),
        )
      ],
    );
  }

  void loadHadethFile() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allAhadeth = content.trim().split('#\r\n');
    for (int i = 0; i < allAhadeth.length; i++) {
      String hadeth = allAhadeth[i];
      List<String> hadethLines = hadeth.split('\n');
      String title = hadethLines[0];
      hadethLines.elementAt(0);
      hadethItems.add(HadethData(title, hadethLines));
    }
    setState(() {});
  }
}

class HadethData {
  String title;
  List<String> content;

  HadethData(this.title, this.content);
}
