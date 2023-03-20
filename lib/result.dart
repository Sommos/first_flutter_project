import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "You have completed the quiz!", 
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.cyan),
      )
    );
  }
}