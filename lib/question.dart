import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const Question({Key? key}) : super(key: key);

  final String questionText;
  // ignore: empty_constructor_bodies
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // height: double.infinity,
      margin: EdgeInsets.all(5),
      child: Text(
        questionText,
        // ignore: prefer_const_constructors
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
