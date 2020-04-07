import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function _answerCallback;
  final String _answerText;

  const Answer(this._answerCallback, this._answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(_answerText),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: _answerCallback,
      ),
    );
  }
}
