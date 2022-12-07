import 'package:flutter/material.dart';

class ClothingAnswer extends StatelessWidget{
  
  String _answer;
  void Function() _clicked;
  ClothingAnswer(this._answer, this._clicked);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _clicked, 
      child: Text(
        _answer,
        style: TextStyle(color: Colors.red),
      ),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      );
  }
}