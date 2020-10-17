import 'package:flutter/material.dart';
import 'package:flutter_app/pages/chat_page.dart';
import 'package:flutter_app/pages/discover/discover_page.dart';
import 'package:flutter_app/pages/friends_page.dart';
import 'package:flutter_app/pages/mine_page.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 2;
  List<Widget> _pages = [ChatPage(),FriendsPage(),DisCover(),MinePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },

        currentIndex: _currentIndex,
        selectedFontSize: 12.0,
        fixedColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('images/tabbar_chat.png',width: 20,height: 20,),
            activeIcon: Image.asset('images/tabbar_chat_hl.png',width: 20,height: 20,),
            title: Text('微信')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),title: Text('通讯录'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('发现'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('我的'),
          ),
        ],
      ),
    );
  }
}
