import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
      ),
      body: Text("This is default text!"),
      ),
    );
  }
}

class Person {
  String name;
  int age;

  Person({this.name = "", this.age = 30}) {}
}

double addNumbers(double num1, double num2) {
  return num1 + num2;
}
