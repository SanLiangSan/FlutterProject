import 'package:flutter/material.dart';
import 'model/car.dart';

class ListViewDemo extends StatelessWidget {
  Widget _itemForRow(BuildContext context, int index) {
    return Container (
      color: Colors.white,
      margin: EdgeInsets.all(10),
      child: Column (
        children: <Widget>[
          Image.network(datas[index].imageUrl),
          SizedBox(height: 10),
          Text(
            datas[index].name,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 18.0,
              fontStyle: FontStyle.values[1],
            ),
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: datas.length,
      itemBuilder: _itemForRow);
  }
}
