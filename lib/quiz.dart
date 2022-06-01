import 'package:flutter/material.dart';
import 'package:udemy1/question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({Key? key, required this.handler}) : super(key: key);
  final Function answerQuestion;
  int questionIndex;
  final List<Map<String, Object>> q;
  Quiz(@required this.answerQuestion, @required this.q,
      @required this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(q[questionIndex]['questionText'].toString()),
        ...(q[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((ans) {
          return Answer(
              () => answerQuestion(ans['score']), ans['text'] as String);
        }).toList()
      ],
    );
  }
}
