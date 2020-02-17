import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //StatelessWidget 을 상속받는 클래스는 화면이 변경될 소지가 없는 위젯

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HelloPage('Hello World'),
    );
  }
}

//stful -> 자동완성
class HelloPage extends StatefulWidget {
  //상태를 가질 수 있는 위젯을 만든다. StatelessWidget <-> StatefulWidget
  final String title;

  HelloPage(this.title);

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String _message = 'Hello World'; // _ 붙이면 private 변경할 변수

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: _changeMessage), // _changeMessage 를 통해 _message 값 변경
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Text(_message,
            style: TextStyle(fontSize: 30))); //widget 은 HelloPage class 를 참조한다.
  }

  void _changeMessage() {
    setState(() {
      _message = '헬로월드';
    });
  }
}
