// import 'dart:html';

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './resukt.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  // const Myapp({Key? key}) : super(key: key);
  final _q = [
    {
      'questionText': 'Hey How are you',
      'answers': [
        {'text': 'good', 'score': 10},
        {'text': 'notgood', 'score': 5},
        {'text': 'cool', 'score': 20},
        {'text': 'its a coding', 'score': 100}
      ]
    },
    {
      'questionText': 'Whats your Fav Food',
      'answers': [
        {'text': 'Pizza', 'score': 10},
        {'text': 'burger', 'score': 20},
        {'text': 'roll', 'score': 10},
      ]
    },
    {
      'questionText': 'Whats your Fav instructor',
      'answers': [
        {'text': 'Parth', 'score': 10},
        {'text': 'Madhur', 'score': 10},
        {'text': 'Prabhav', 'score': 15},
        {'text': 'Raj', 'score': 20},
      ],
    },
    {
      'questionText': 'Vivan is ',
      'answers': [
        {'text': 'cute', 'score': 10},
        {'text': 'good', 'score': 20},
        {'text': 'pretty', 'score': 10},
      ]
    }
  ];
  var _questionindex = 0;
  var _totalscore = 0;
  void _answerQuestion(int score) {
    setState(() {
      _questionindex++;
      // if (questionindex > q.length) {
      //   questionindex = 0;
      // }
      _totalscore = _totalscore + score;
    });
    // print('1');
  }

  void __resetquiz() {
    setState(() {
      _questionindex = 0;
      _totalscore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: Text('Udemy'),
        ),
        body: _questionindex < _q.length
            ? Quiz(_answerQuestion, _q, _questionindex)
            //  Column(
            //     children: [
            //       Question(q[questionindex]['questionText'].toString()),
            //       ...(q[questionindex]['answers'] as List<String>)
            //           .map((answer) {
            //         return Answer(answerQuestion, answer);
            //       }).toList()
            //     ],
            //   )
            : Result(_totalscore, __resetquiz),
      ),
    );
  }
}
