import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function _answerCallback;

  const Answer(this._answerCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text('Answer 1'),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: _answerCallback,
      ),
    );
  }
}
