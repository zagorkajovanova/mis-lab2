import 'package:flutter/material.dart';
import './clothing_question.dart';
import 'clothing_answer.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{

  var questions = [
    {
      'question': 'Select type of top:',
      'answer': ['T-shirt', 'Cardigan', 'Shirt', 'Sweater']
    },
    {
      'question': 'Select top color:',
      'answer': ['Black', 'White', 'Red', 'Blue']
    },
    {
      'question': 'Select type of bottom:',
      'answer': ['Jeans', 'Skirt', 'Trousers', 'Cargo Pants']
    },
    {
      'question': 'Select bottom color:',
      'answer': ['Black', 'Blue', 'White']
    },
    {
      'question': 'Select accessory:',
      'answer': ['Sunglasses', 'Belt', 'Necklace', 'Scarf']
    }
  ];

  void _clicked(){
    setState(() {
      //check if the index is valid
      if(_index+1 < questions.length){
        _index += 1;
      }
      else{
        _index = 0;
        print("Thank you for answering!");
      }
    });
    print('Button was clicked!');
  
  }

  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lab2 App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lab2 Application")
        ),
        body: Column(
          children: [
            ClothinQuestion(questions[_index]['question'] as String),
            ...(questions[_index]['answer'] as List<String>).map((_answer){
              return ClothingAnswer(_answer, _clicked);
            })
          ],
        ),
      ),
    );
  }
}