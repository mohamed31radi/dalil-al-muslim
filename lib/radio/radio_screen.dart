import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/radio_image.png'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Text(
              "إذاعة القرآن الكريم",
              style:
                  Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.skip_previous,
                    color: Theme.of(context).primaryColor,
                    size: 40,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow_sharp,
                    color: Theme.of(context).primaryColor,
                    size: 55,
                  ),
                  padding: EdgeInsets.only(top: 2)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.skip_next,
                    color: Theme.of(context).primaryColor,
                    size: 40,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
