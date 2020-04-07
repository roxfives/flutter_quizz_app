import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quizz extends StatelessWidget {
  final Function answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  const Quizz({
    @required this.answerQuestion,
    @required this.questionIndex,
    @required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((question) {
          return Answer(answerQuestion, question);
        }).toList()
      ],
    );
  }
}
