import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return Container(
      child: RaisedButton(
        child: Text("Answer 1"),
        onPressed: _answerQuestion,
      ),
    )
  }
}