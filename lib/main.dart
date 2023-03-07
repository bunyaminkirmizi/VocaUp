import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}
class MyAppState extends State<MyApp> {
  var questions = ['En sevdigin renk ne', 'Sevdigin hayvan ne'];
  var qIndex = 0;
  void answerQuestion(){
    print('Answer chosen!');
    setState(() {

      if (qIndex >= questions.length-1) {
        qIndex -= 1;
      }else{
        qIndex += 1;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(title: Text('İlk Uygulama')),
            body: Column(children: [
              Text("The question"),
              Text(questions[qIndex]),
              ElevatedButton(onPressed: answerQuestion, child: Text("Answer 1")),
              ElevatedButton(onPressed: answerQuestion, child: Text("Answer 2")),
              ElevatedButton(onPressed: answerQuestion, child: Text("Answer 3")),
              ElevatedButton(onPressed: answerQuestion, child: Text("Answer 4"))
            ])));
  }
}
