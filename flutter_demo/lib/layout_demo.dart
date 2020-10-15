import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      alignment: Alignment(0,0),
      child: StackDemo(),
    );
  }
}

// Row
class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.ideographic,
      children: <Widget>[
        Expanded(
          child: Container(
            height: 80,
            color: Colors.white,
            child: Text(
              'hello',
              style: TextStyle(fontSize: 15,color: Colors.red),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 80,
            color: Colors.blue,
            child: Text(
              '嘿嘿12312312',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 80,
            color: Colors.red,
            child: Text(
              'heihei',
              style: TextStyle(fontSize: 60),
            ),
          ),
        ),
      ],
    );
  }
}


// Aspect
class AspectDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 150,
      child: AspectRatio(
        aspectRatio: 1/5,
        child: Icon(Icons.add,size: 30,),
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0,0),
      children: <Widget>[
        Positioned(
          child: Container(
            color: Colors.white,
            width: 400,
            height: 200,
            child: Icon(Icons.add),
          ),
        ),
        Positioned(
          child: Container(
            color: Colors.red,
            width: 250,
            height: 250,
            child: Icon(Icons.search),
          ),
        ),
        Positioned(
          child: Container(
            color: Colors.blue,
            width: 50,
            height: 50,
            child: Icon(Icons.search),
          ),
        ),
      ],
    );
  }
}

