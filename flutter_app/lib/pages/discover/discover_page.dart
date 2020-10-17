
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/discover/discover_cell.dart';

class DisCover extends StatefulWidget {
  @override
  _DisCoverState createState() => _DisCoverState();
}

class _DisCoverState extends State<DisCover> {
  Color _themeColor = Color.fromRGBO(220, 220, 220, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('发现',style: TextStyle(fontSize: 18, color: Colors.black)),backgroundColor: _themeColor,centerTitle: true,elevation: 0.0,),
      body: Container(
        color: _themeColor,
        child: ListView(
          children: <Widget>[
            DiscoverCell(imageName: 'images/朋友圈.png',title: '朋友圈'),
            SizedBox(height: 8),
            DiscoverCell(imageName: 'images/扫一扫2.png',title: '扫一扫'),
            SeperateLine(),
            DiscoverCell(imageName: 'images/摇一摇.png',title: '摇一摇'),
            SizedBox(height: 8),
            DiscoverCell(imageName: 'images/看一看icon.png',title: '搜一搜'),
            SeperateLine(),
            DiscoverCell(imageName: 'images/搜一搜 2.png',title: '看一看'),
            SizedBox(height: 8),
            DiscoverCell(imageName: 'images/附近的人icon.png',title: '附近的人'),
            SeperateLine(),
            DiscoverCell(imageName: 'images/购物.png',title: '购物',subTitle: '双11限时特价',subImageName: 'images/badge.png',),
            SizedBox(height: 8),
            DiscoverCell(imageName: 'images/游戏.png',title: '游戏'),
            SeperateLine(),
            DiscoverCell(imageName: 'images/小程序.png',title: '小程序'),
          ],
        ),
      ),
    );
  }
}

// 分割线
class SeperateLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(width: 50,height: 0.5,color: Colors.white),
        Container(height: 0.5,color: Colors.grey)
      ],
    );
  }
}

