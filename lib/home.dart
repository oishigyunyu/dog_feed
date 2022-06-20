import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final days = ['げつようび', 'かようび', 'すいようび', 'もくようび', 'きんようび', 'どようび', 'にちようび'];

    final DateTime now = DateTime.now();
    final int todayNo = now.weekday - 1;

    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Image(
            image: AssetImage('images/dog-face-ios.png'),
            width: 100.0,
          ),
          const Text(
            'しょこりのごはん',
            style: TextStyle(fontSize: 30),
          ),
          const Text(
            'きょうは',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            days[todayNo],
            style: const TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
