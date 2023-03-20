import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get getResult 
  {
    var resultText = "You have completed the quiz!";
    if (resultScore <= 8)
    {
      resultText = "You have scored poorly with " + resultScore.toString() + " points";
    }
    else if (resultScore <= 12)
    {
      resultText = "You have scored mid with " + resultScore.toString() + " points";
    }
    else if (resultScore <= 16)
    {
      resultText = "You have scored well with " + resultScore.toString() + " points";
    }
    else 
    {
      resultText = "You have scored "+ resultScore.toString() + " points";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "You have completed the quiz!" + getResult, 
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.cyan),
      )
    );
  }
}