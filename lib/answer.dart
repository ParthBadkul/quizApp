// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({Key? key}) : super(key: key);

  final VoidCallback selecthandler;
  String answerText;

  Answer(this.selecthandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.orange,
          onPrimary: Colors.black,
        ),
        child: Text(answerText),
        // textColor: Color.fromARGB(136, 77, 72, 72),
        onPressed: selecthandler,
        // color: Colors.lightGreen,
      ),
    );
  }
}
