import 'package:flutter/material.dart';
import 'package:islami_app/hadeth/hadeth_details.dart';
import 'package:islami_app/my_provider.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/quran/sura_details.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'hom/home_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale(provider.language),
      debugShowCheckedModeBanner: false,
      initialRoute: Home_screen.routeName,
      routes: {
        Home_screen.routeName: (context) => Home_screen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routeName: (context) => HadethDetails()
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.thMode,
    );
  }
}
