import 'package:flutter/material.dart';

class ClothingAnswer extends StatelessWidget {
  String _answer;
  void Function() _clicked;
  ClothingAnswer(this._answer, this._clicked);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _clicked,
      child: Text(
        _answer,
        style: TextStyle(color: Colors.red, fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          minimumSize: Size(200, 40),
          maximumSize: Size(200, 40)),
    );
  }
}
