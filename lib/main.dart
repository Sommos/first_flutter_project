import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget 
{
  @override
  State<StatefulWidget> createState() 
  {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> 
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
      "What's your favorite color?",
      "What's your favorite animal?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            OutlinedButton(
              child: Text("Answer 1"), 
              onPressed: _answerQuestion
            ),
            OutlinedButton(
              child: Text("Answer 2"), 
              onPressed: () => print("Answer 2 chosen!")
            ),
            OutlinedButton(
              child: Text("Answer 3"), 
              onPressed: () => print("Answer 3 chosen!")
            ),
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