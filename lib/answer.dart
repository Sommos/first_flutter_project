import 'package:flutter/material.dart';

class Answer extends StatelessWidget 
{
  final VoidCallback answerPointer;
  final String answerText;

  Answer(this.answerPointer, String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(width: 2.0, color: Colors.cyan),
          backgroundColor: Colors.white,
          foregroundColor: Colors.cyan,
        ),
        child: Text(answerText),
        onPressed: answerPointer,
      ),
    );
  }
}
