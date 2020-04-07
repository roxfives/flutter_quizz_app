import 'package:flutter/material.dart';
import 'package:quizz_app/answer.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  
  var _questionIndex = 0;
  var _questions = [
        'What\'s your favorite color?',
        'What\'s your favorite animal?',
      ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
      _questionIndex %= _questions.length;
    });

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
            Question(_questions.elementAt(_questionIndex)),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
