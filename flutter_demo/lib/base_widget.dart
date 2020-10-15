import 'package:flutter/material.dart';

// text
class TextDemo extends StatelessWidget {
  final String _title = 'Flutter study !';
  final String _author = 'typeco';
  // style
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  @override
  Widget build(BuildContext context) {
    return Text(
      '<$_title>,\n \n \n这个作者是 --- $_author 哈哈，你是谁，你在哪里，what the fuck ！',
      style: _textStyle,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
    );
  }
}


// RichText
class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
          text: '<Flutter 高级进阶>',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.black,
          ),
          children: <TextSpan>[
            TextSpan(
              text: '--',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.red,
              ),
            ),
            TextSpan(
              text: 'typeco',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey
              ),
            ),
          ],
        ),
    );
  }
}

// container
class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Row(
        children: <Widget>[
          Container(
            color: Colors.red,
            child: Icon(
              Icons.add,
              size: 45,
            ),
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(20),
            height: 200,
            width: 200,
          ),
        ],
      ),
    );
  }
}

