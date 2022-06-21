import 'package:flutter/material.dart';
import './home.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _checkedMorning = false;
  bool _checkedDinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              value: _checkedMorning,
              onChanged: (bool? value) {
                setState(() {
                  _checkedMorning = value!;
                });
              },
              title: const Text('あさ'),
              secondary: const Icon(Icons.breakfast_dining),
            ),
            CheckboxListTile(
                value: _checkedDinner,
                onChanged: (bool? value) {
                  setState(() {
                    _checkedDinner = value!;
                  });
                },
                title: const Text('よる'),
                secondary: const Icon(Icons.dinner_dining)),
          ],
        ),
      ),
    );
  }
}
