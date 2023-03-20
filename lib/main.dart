import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  void _answerQuestion() 
  {
    setState(() 
    {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) 
  {
    var questions = [
      {
        "questionText": "What's your favorite color?", "answers": 
          [
            "Black", "Red", "Green", "White",
          ],
      },
      {
        "questionText": "What's your favorite animal?", "answers": 
          [
            "Tiger", "Parrot", "Rabbit", "Fish",
          ],
      },
      {
        "questionText": "What's your favorite food?", "answers": 
          [
            "Pasta", "Soup", "Pizza", "Kebab",
          ],
      },
    ];

    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]["questionText"] as String),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
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