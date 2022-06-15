import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

void main() {
  day();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dog Feed',
      theme: ThemeData(
          primarySwatch: Colors.green,
          textTheme: GoogleFonts.notoSansTextTheme(
            Theme.of(context).textTheme,
          )),
      home: const MyHomePage(
        title: 'Hello',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(title),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Default(),
            WeekCheckBox(),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class WeekCheckBox extends StatelessWidget {
  const WeekCheckBox({Key? key}) : super(key: key);

  List buildList() {
    final list = <String>[];
    list.add('Sunday');
    list.add('Monday');
    list.add('Tuesday');
    list.add('Wednesday');
    list.add('Thursday');
    list.add('Friday');
    list.add('Saturday');
    return list;
  }

  @override
  Widget build(BuildContext context) {
    final dayList = buildList();
    return ListView.builder(
      itemCount: dayList.length, // この行を追加
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Row(
              children: <Widget>[
                Text(
                  dayList[index],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Default extends StatelessWidget {
  const Default({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Image(
            image: AssetImage('images/dog-face-ios.png'),
            width: 100.0,
          ),
          Text(
            'しょこり',
          ),
        ],
      ),
    );
  }
}

void day() {
  final DateTime now = DateTime.now();
  final DateFormat outputFormat = DateFormat('yyyy-MM-dd');
  final String date = outputFormat.format(now);
  print('day: $date.weekday');
}
