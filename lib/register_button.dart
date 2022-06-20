import 'package:flutter/material.dart';

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
          // （1） 背景色を指定
          primary: Colors.redAccent,
          // （2） 影のサイズ
          elevation: 5,
          // （3） 角を丸くする
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          )),
      onPressed: () {
        print('tapped!!');
      },
      child: const Text('登録する'),
    );
  }
}
