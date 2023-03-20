import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget 
{
  @override
  State<StatefulWidget> createState() 
  {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> 
{
  final _questions = const 
  [
    {
      "questionText": "What's your favorite color?", 
      "answers": [
        {
          'text': "Black", "Score": 10
        }, 
        {
          'text': "Red", "Score": 5
        }, 
        {
          'text': "Green", "Score": 3
        }, 
        {
          'text': "White", "Score": 1
        },
      ],
    },
    {
      "questionText": "What's your favorite animal?", 
      "answers": [        
        {
          'text': "Tiger", "Score": 10
        }, 
        {
          'text': "Parrot", "Score": 5
        }, 
        {
          'text': "Penguin", "Score": 3
        }, 
        {
          'text': "Fish", "Score": 1
        },
      ],
    },
    {
      "questionText": "What's your favorite food?", 
      "answers": [        
        {
          'text': "Pasta", "Score": 10
        }, 
        {
          'text': "Soup", "Score": 5
        }, 
        {
          'text': "Pizza", "Score": 3
        }, 
        {
          'text': "Burgers", "Score": 1
        },
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore =0;

  void _answerQuestion(int score) 
  {
    _totalScore += score;

    setState(() 
    {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) 
    {
      print("There are more questions available");
    }
    else
    {
      print("There are no more questions available");
    }
  }

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter & Dart Quiz Application",),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length ? Quiz(answerQuestion: _answerQuestion, questions: _questions, questionIndex: _questionIndex)
        : Result(_totalScore),
        ) 
      );
  }
}


// void main()
// {
//   runApp(MyApp());

//   var personOne = Person(name: "Samuel", age: 22);
//   var personTwo = Person(name: "Jeffrey", age: 27);
//   personTwo.name = "Jeff";

//   print(personOne.age);
//   print(personTwo.name);

//   var firstResult = addNumbers(6, 8);
//   print(firstResult);
//   print("Hello!");
// }

// class Person {
//   String name;
//   int age;

//   Person({this.name = "", this.age = 30}) {}
// }

// double addNumbers(double num1, double num2) {
//   return num1 + num2;
// }