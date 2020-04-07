import 'package:flutter/material.dart';
import 'package:quizz_app/answer.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  
  var _questionIndex = 0;
  final _questions = const [
        {
          'questionText': 'What\'s your favorite color?',
          'answers': ['Black', 'Red', 'Green', 'White'],
        },
        {
          'questionText': 'What\'s your favorite animal?',
          'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
        },
        {
          'questionText': 'What\'s your favorite game?',
          'answers': ['Assassin\'s Creed', 'Halo', 'Fable', 'Skyrim']
        },
      ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
      _questionIndex %= _questions.length;
    });

    if (_questionIndex < _questions.length) {
      print('We have more questions');
    }

    print(_questionIndex);
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Question(_questions.elementAt(_questionIndex)['questionText']),
            ...(_questions[_questionIndex]['answers'] as List<String>).map((question) {
              return Answer(_answerQuestion, question);
            }).toList()
          ],
        ),
      ),
    );
  }
}
