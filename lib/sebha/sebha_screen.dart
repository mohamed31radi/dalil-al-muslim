import 'package:flutter/material.dart';
import 'package:islami_app/sebha/drop_down_button.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/sebha/sebha_counter.dart';

class SebhaTab extends StatefulWidget {
  static int counter = 0;

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int listItemsIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image.asset('assets/images/sebha_icon.png',
                  color: Theme.of(context).primaryColor),
              SebhaCounter(SebhaTab.counter),
            ],
          ),
          DropDwnBtn(),
          SizedBox(
            height: 60,
          ),
          FloatingActionButton(
            child: Text('+',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: MyThemeData.colorWhite)),
            backgroundColor: Theme.of(context).primaryColor,
            onPressed: () {
              if (SebhaTab.counter < 33) {
                SebhaTab.counter++;
              } else {
                DropDwnBtn.index = listItemsIndex;
                SebhaTab.counter = 0;
                listItemsIndex++;
              }
              if (listItemsIndex > 4) {
                listItemsIndex = 0;
              }
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
