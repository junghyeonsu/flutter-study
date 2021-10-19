import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

// MyAppState는 MyApp의 상태를 저장하는 클래스
class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var questions = [
    '제일 좋아하는 색이 뭐에요?',
    '제일 좋아하는 동물이 뭐에요?'
  ];

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
      ),
      body: Column(
        children: [
          Text(questions[questionIndex]),
          RaisedButton(
            child: Text('대답 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('대답 2'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('대답 3'),
            onPressed: answerQuestion,
          ),
        ],
      ),
    ));
  }
}
