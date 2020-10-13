import 'package:flutter/material.dart';
import 'package:sampletest/question.dart';
//import './question.dart ';
// import 'package:flutter/rendering.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState(); //return mystateapp
}

// state<MyApp> means it belongs to myapp class.
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      // set state is used to update values by clicking a buttom in fluuter.
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["whats's ur fav colour?", "Fav animal??"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("quiz app"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions.elementAt(_questionIndex)),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestion,
            ),
            /*we pass function pionter not fun because it will return function op not fun.*/
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {
                // act as a function
                print("ans 3 choosen");
              },
            )
          ],
        ),
      ),
    );
  }
}
