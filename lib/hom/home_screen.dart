import 'package:flutter/material.dart';
import 'package:islami_app/hadeth/ahadeth_screen.dart';
import 'package:islami_app/my_provider.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/quran/quran_screen.dart';
import 'package:islami_app/radio/radio_screen.dart';
import 'package:islami_app/sebha/sebha_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../setting_screen/setting_tab.dart';

class Home_screen extends StatefulWidget {
  static String routeName = 'home screen';

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Stack(
      children: [
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
          body: tabs[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) {
                currentIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/moshaf.png'),
                        size: 30),
                    label: AppLocalizations.of(context)!.quran_icon,
                    backgroundColor: Theme.of(context).colorScheme.primary),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/sebha.png'),
                        size: 30),
                    label: AppLocalizations.of(context)!.sebha_icon,
                    backgroundColor: Theme.of(context).colorScheme.primary),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/radio.png'),
                        size: 30),
                    label: AppLocalizations.of(context)!.radio_icon,
                    backgroundColor: Theme.of(context).colorScheme.primary),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/ahadeth.png'),
                        size: 30),
                    label: AppLocalizations.of(context)!.hadeth_icon,
                    backgroundColor: Theme.of(context).colorScheme.primary),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings, size: 30),
                    label: AppLocalizations.of(context)!.setting_icon,
                    backgroundColor: Theme.of(context).colorScheme.primary),
              ]),
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    RadioTab(),
    AhadethTab(),
    SettingTab()
  ];
}
