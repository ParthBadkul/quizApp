import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({Key? key}) : super(key: key);
  final int s;
  VoidCallback back;
  String p = '';
  // ignore: use_key_in_widget_constructors
  Result(this.s, this.back) {}

  String get resultPhrase {
    if (s < 30) {
      p = 'Dumb';
    } else if (s <= 50) {
      p = 'Do Better';
    } else if (s >= 150) {
      p = 'Damnnnnnnnn';
    } else if (s < 50 && s < 150) {}
    p = 'cool';
    return p;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('You Have Compltetd The Quiz'),
          Text('Your Score is:-'),
          Text(
            s.toString(),
          ),
          Text(
            resultPhrase,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 36,
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(primary: Colors.black),
            onPressed: back,
            child: Text(
              'Restart',
              style: TextStyle(color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
