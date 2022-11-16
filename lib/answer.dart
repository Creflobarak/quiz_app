import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //Take as much width as it can get
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue, //Button color
          onPrimary: Colors.white, //Text color
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
