import 'package:flutter/material.dart';
import 'package:flutter_basic/Insta_root_page.dart';

class InstaMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        accentColor: Colors.black
      ),
      home: RootPage(),
    );
  }
}

