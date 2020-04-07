import 'package:flutter/material.dart';

import 'package:quizz_app/quizz.dart';
import 'package:quizz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 20},
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 20},
        {'text': 'Snake', 'score': 10},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite game?',
      'answers': [
        {'text': 'Assassin\'s Creed', 'score': 20},
        {'text': 'Halo', 'score': 10},
        {'text': 'Fable', 'score': 5},
        {'text': 'Skyrim', 'score': 1},
      ],
    },
  ];

  void _resetQuizz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
    });

    _totalScore += score;

    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more questions!');
    }

    print(_questionIndex);
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: _questionIndex < _questions.length
            ? Quizz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuizz),
      ),
    );
  }
}
