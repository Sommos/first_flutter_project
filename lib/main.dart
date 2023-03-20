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
      "answers": ["Black", "Red", "Green", "White",],
    },
    {
      "questionText": "What's your favorite animal?", 
      "answers": ["Tiger", "Parrot", "Rabbit", "Fish"],
    },
    {
      "questionText": "What's your favorite food?", 
      "answers": ["Pasta", "Soup", "Pizza", "Kebab"],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() 
  {
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
        : Result(),
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