import 'package:flutter/material.dart';

class Answer extends StatelessWidget 
{
  final VoidCallback answerPointer;

  Answer(this.answerPointer);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(width: 2.0, color: Colors.cyan),
          backgroundColor: Colors.white,
          foregroundColor: Colors.cyan,
        ),
        child: Text("Answer 1"),
        onPressed: answerPointer,
      ),
    );
  }
}
