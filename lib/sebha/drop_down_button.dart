import 'package:flutter/material.dart';
import 'package:islami_app/my_provider.dart';
import 'package:islami_app/sebha/sebha_counter.dart';
import 'package:islami_app/sebha/sebha_screen.dart';
import 'package:provider/provider.dart';

import '../my_theme.dart';

class DropDwnBtn extends StatefulWidget {
  static int index = 0;

  @override
  State<DropDwnBtn> createState() => _DropDwnBtnState();
}

class _DropDwnBtnState extends State<DropDwnBtn> {
  List<String> items = [
    "سبحان الله",
    "الحمد الله",
    "لا الله الا الله",
    "الله أكبر",
    "لا حول ولا قوة الا بالله",
  ];
  String dropDownValue = "";
  bool checkIsChanged = false;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    if (checkIsChanged == false) {
      dropDownValue = items[DropDwnBtn.index];
    }

    return Container(
        margin: EdgeInsets.only(top: 80),
        width: 250,
        height: 40,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadiusDirectional.circular(20),
        ),
        child: Center(
            child: DropdownButton(
          alignment: AlignmentDirectional.center,
          underline: DecoratedBox(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.transparent))),
          style: TextStyle(
            fontSize: 20,
            color: MyThemeData.colorBlack,
          ),
          value: dropDownValue,
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: MyThemeData.colorWhite,
          ),
          items: items.map((String items) {
            return DropdownMenuItem(
              alignment: Alignment.centerRight,
              value: items,
              child: Text(items),
            );
          }).toList(),
          onTap: () {
            SebhaTab.counter = 0;
          },
          onChanged: (String? newValue) {
            setState(() {
              dropDownValue = newValue!;
              checkIsChanged = true;
            });
          },
          dropdownColor: provider.thMode == ThemeMode.light
              ? MyThemeData.colorWhite
              : MyThemeData.colorGrey,
        )));
  }
}
