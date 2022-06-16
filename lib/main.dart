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
      home: const HomePage(
        title: 'Hello',
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
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
            DayBox(),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class DayBox extends StatefulWidget {
  const DayBox({Key? key}) : super(key: key);



  @override
  State<DayBox> createState() => _DayBoxState();
}

class _DayBoxState extends State<DayBox> {
  List<String> buildList() {
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
  bool _checkedBreakfast = false;
  bool _checkedDinner = false;

  List<String> list = buildList();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          const Text(
            'げつようび',
            style: TextStyle(fontSize: 30.0),
          ),
          Column(
            children: <Widget>[
              const Text('あさ', style: TextStyle(fontSize: 20.0)),
              Checkbox(
                activeColor: Colors.blue,
                value: _checkedBreakfast,
                onChanged: (bool? value) {
                  setState(() {
                    _checkedBreakfast = value!;
                  });
                },
              ),
            ],
          ),
          Column(
            children: <Widget>[
              const Text('よる', style: TextStyle(fontSize: 20.0),),
              Checkbox(
                activeColor: Colors.blue,
                value: _checkedDinner,
                onChanged: (bool? value) {
                  setState(() {
                    _checkedDinner = value!;
                  });
                },
              ),
            ],
          ),
        ],
      ),
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
            'しょこりのごはん',
            style: TextStyle(fontSize: 30),
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
