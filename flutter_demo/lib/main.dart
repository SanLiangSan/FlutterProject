import 'package:flutter/material.dart';
import 'package:flutter_demo/base_widget.dart';
import 'package:flutter_demo/layout_demo.dart';
import 'package:flutter_demo/listview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: LayoutDemo(),
    );
  }
}
