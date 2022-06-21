import 'package:flutter/material.dart';
import './register_page.dart';

class RegisterButton extends StatefulWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  State<RegisterButton> createState() => RegisterButtonState();
}

class RegisterButtonState extends State<RegisterButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.redAccent,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          )),
      onPressed: ()  {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const RegisterPage();
        }));
      },
      child: const Text('登録する'),
    );
  }
}
