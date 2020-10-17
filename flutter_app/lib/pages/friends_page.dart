
import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('通讯录'),),
      body: Center(child: Text('通讯录'),),
    );
  }
}
