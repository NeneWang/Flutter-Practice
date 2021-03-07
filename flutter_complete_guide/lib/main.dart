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

class MyAppState extends State<MyApp> {
  void answerQuestion(answer) {
    print("Answer chosen! $answer");
    questionNumber++;
  }

  var questions = [
    "What's your favorite color?",
    "What's your favorite animal?"
  ];

  var questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First Quiz App")),
        body: Column(
          children: [
            Text(questions.elementAt(questionNumber)),
            RaisedButton(
                child: Text("Answer 1"), onPressed: () => answerQuestion("Q1")),
            RaisedButton(
                child: Text("Answer 2"), onPressed: () => answerQuestion("Q2")),
            RaisedButton(
                child: Text("Answer 3"), onPressed: () => answerQuestion("Q3")),
          ],
        ),
      ),
    );
  }
}
