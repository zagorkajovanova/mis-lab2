import 'package:flutter/material.dart';

class ClothinQuestion extends StatelessWidget {

  String _question;
  ClothinQuestion(this._question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(30),
      child: Text(
        _question,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.blue, fontSize: 20),
      ),
    );
  }
}