import 'package:flutter/material.dart';
import 'package:flutter_course/result.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// underscored stuff will only be available in the .dart file they are defined
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 6},
        {'text': 'White', 'score': 1},
        {'text': 'Red', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Burgers', 'score': 1},
        {'text': 'Pizza', 'score': 4},
        {'text': 'Chips', 'score': 6},
        {'text': 'Soda', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s your favorite format of fiction?',
      'answers': [
        {'text': 'Series', 'score': 6},
        {'text': 'Movies', 'score': 4},
        {'text': 'Anime', 'score': 1},
        {'text': 'Animations', 'score': 10},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // named function below and use when it'll be called multiple times
  // otherwise anonymous/unanmed function
  void _answerQuestion(int score) {
    _totalScore += score; //same as _totalScore = _totalScore + score

    setState(
      () {
        _questionIndex = _questionIndex + 1;
      },
    );
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
//Const - value must be known at compile, can't be changed after initialized
//e.g const birthday = '11/11/2003'
//Final - value must be known at run time, can't be changed after initialized
//e.g. final birthday = getBirthDateFromDB()
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
