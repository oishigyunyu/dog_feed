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
  @override
  Widget build(BuildContext context) {
    List<bool> _checkedBreakfast = [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
    ];
    List<bool> _checkedDinner = [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
    ];

    List list = <String>[];
    list.add('Sunday');
    list.add('Monday');
    list.add('Tuesday');
    list.add('Wednesday');
    list.add('Thursday');
    list.add('Friday');
    list.add('Saturday');
    return Center(
      child: Column(
        children: <Widget>[
          Row(
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
                    value: _checkedBreakfast[0],
                    onChanged: (bool? value) {
                      setState(() {
                        _checkedBreakfast[0] = value!;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  const Text(
                    'よる',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Checkbox(
                    activeColor: Colors.blue,
                    value: _checkedDinner[0],
                    onChanged: (bool? value) {
                      setState(() {
                        _checkedDinner[0] = value!;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              const Text(
                '　かようび',
                style: TextStyle(fontSize: 30.0),
              ),
              Checkbox(
                activeColor: Colors.blue,
                value: _checkedBreakfast[1],
                onChanged: (bool? value) {
                  setState(() {
                    _checkedBreakfast[1] = value!;
                  });
                },
              ),
              Checkbox(
                activeColor: Colors.blue,
                value: _checkedDinner[1],
                onChanged: (bool? value) {
                  setState(() {
                    _checkedDinner[1] = value!;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              const Text(
                'すいようび',
                style: TextStyle(fontSize: 30.0),
              ),
              Checkbox(
                activeColor: Colors.blue,
                value: _checkedBreakfast[2],
                onChanged: (bool? value) {
                  setState(() {
                    _checkedBreakfast[2] = value!;
                  });
                },
              ),
              Checkbox(
                activeColor: Colors.blue,
                value: _checkedDinner[2],
                onChanged: (bool? value) {
                  setState(() {
                    _checkedDinner[2] = value!;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              const Text(
                'もくようび',
                style: TextStyle(fontSize: 30.0),
              ),
              Checkbox(
                activeColor: Colors.blue,
                value: _checkedBreakfast[3],
                onChanged: (bool? value) {
                  setState(() {
                    _checkedBreakfast[3] = value!;
                  });
                },
              ),
              Checkbox(
                activeColor: Colors.blue,
                value: _checkedDinner[3],
                onChanged: (bool? value) {
                  setState(() {
                    _checkedDinner[3] = value!;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              const Text(
                'きんようび',
                style: TextStyle(fontSize: 30.0),
              ),
              Checkbox(
                activeColor: Colors.blue,
                value: _checkedBreakfast[4],
                onChanged: (bool? value) {
                  setState(() {
                    _checkedBreakfast[4] = value!;
                  });
                },
              ),
              Checkbox(
                activeColor: Colors.blue,
                value: _checkedDinner[4],
                onChanged: (bool? value) {
                  setState(() {
                    _checkedDinner[4] = value!;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              const Text(
                '　どようび',
                style: TextStyle(fontSize: 30.0),
              ),
              Checkbox(
                activeColor: Colors.blue,
                value: _checkedBreakfast[5],
                onChanged: (bool? value) {
                  setState(() {
                    _checkedBreakfast[5] = value!;
                  });
                },
              ),
              Checkbox(
                activeColor: Colors.blue,
                value: _checkedDinner[5],
                onChanged: (bool? value) {
                  setState(() {
                    _checkedDinner[5] = value!;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              const Text(
                'にちようび',
                style: TextStyle(fontSize: 30.0),
              ),
              Checkbox(
                activeColor: Colors.blue,
                value: _checkedBreakfast[6],
                onChanged: (bool? value) {
                  setState(() {
                    _checkedBreakfast[6] = value!;
                  });
                },
              ),
              Checkbox(
                activeColor: Colors.blue,
                value: _checkedDinner[6],
                onChanged: (bool? value) {
                  setState(() {
                    _checkedDinner[6] = value!;
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
