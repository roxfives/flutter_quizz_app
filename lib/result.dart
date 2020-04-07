import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function resetQuizz;

  Result(this.finalScore, this.resetQuizz);


  String get resultPhrase {
    String resultText;

    if (finalScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (finalScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (finalScore <= 16) {
      resultText = 'You are... strange?';
    } else {
      resultText = 'You are so bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
            onPressed: resetQuizz,
          )
        ],
      ),
    );
  }
}
