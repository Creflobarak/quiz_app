import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
//The .all allows you to define multiple constructors per class
//It allows you to get the same type of object you'd get from a normal
//constructor but with some predefined settings
//e.g Person({this.name, this.age = 30}), Person.veryOld(this.name){age = 60}
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
