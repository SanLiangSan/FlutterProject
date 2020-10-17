import 'package:flutter/material.dart';
import 'package:flutter_app/root_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeChat',
      theme: ThemeData(
          highlightColor: Color.fromARGB(1, 0, 0, 0),
          splashColor: Color.fromARGB(1, 0, 0, 0),
          primarySwatch: Colors.blue,
      ),
      home: RootPage(),
    );
  }
}
