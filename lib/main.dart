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
            Week(),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Week extends StatelessWidget {
  const Week({Key? key}) : super(key: key);

  List<Widget> _buildDaysList() {
    final list = <Widget>[];
    for (int i = 0; i < 7; ++i) {
      final DateTime now = DateTime.now().add(Duration(days: i));
      final DateFormat outputFormat = DateFormat('yyyy-MM-dd');
      final String date = outputFormat.format(now);
      list.add(Container(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          '$date.weekday',
          style: const TextStyle(fontSize: 20.0),
        ),
      )
      );
    }
    return list;
  }

  final <Widget>[] days = _buildDaysList();

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(16.0),
          child: const Text(
            'Monday',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          child: const Text(
            'TuesDay',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ],
    ));
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
