import 'package:flutter/material.dart';
import 'package:flutter_app/pages/discover/discover_child_page.dart';

class DiscoverCell extends StatelessWidget {
  // property
  final String title;
  final String subTitle;
  final String imageName;
  final String subImageName;
  // method
  DiscoverCell({this.title,this.subTitle,this.imageName,this.subImageName});

  // build
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => DiscoverChildPage(title: '$title')));
      },
      child: Container(
        color: Colors.white,
        height: 54,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // left
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Image(image: AssetImage(this.imageName), width: 20),
                  SizedBox(width: 15),
                  Text(this.title)
                ],
              ),
            ),
            // right
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  (subTitle == null)?Text(''):Text(this.subTitle),
                  (subImageName == null)?Container():Image(image: AssetImage(this.subImageName),width: 12,),
                  Image(image: AssetImage('images/icon_right.png'),width: 15,)
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}

