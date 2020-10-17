import 'package:flutter/material.dart';
import 'package:flutter_app/root_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeChat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          highlightColor: Color.fromARGB(1, 0, 0, 0),
          splashColor: Color.fromARGB(1, 0, 0, 0),
          primarySwatch: Colors.blueGrey,
      ),
      home: RootPage(),
    );
  }
}
