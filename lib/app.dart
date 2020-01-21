import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  AppPageState createState() => AppPageState();
}

class AppPageState extends State<App> {
  int _currentIndex = 0;
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        onTap: ((index){
          // 点击事件方法体
        }),
        items: [new BottomNavigationBarItem(
          title: new Text(
            "微信",
            style: new TextStyle(
              color: 0 == _currentIndex
                    ? Colors.green
                    : Colors.grey[300],
            ),
          ),
          icon: new Icon(
            Icons.star,
            color: 0 == _currentIndex
                    ? Colors.green
                    : Colors.grey[300],
            ),
        ),new BottomNavigationBarItem(
          title: new Text(
            "通讯录",
            style: new TextStyle(
              color: 1 == _currentIndex
                    ? Colors.green
                    : Colors.grey[300],
            ),
          ),
          icon: new Icon(
            Icons.class_,
            color: 1 == _currentIndex
                    ? Colors.green
                    : Colors.grey[300],
            ),
        ),new BottomNavigationBarItem(
          title: new Text(
            "发现",
            style: new TextStyle(
              color: 2 == _currentIndex
                    ? Colors.green
                    : Colors.grey[300],
            ),
          ),
          icon: new Icon(
            Icons.donut_large,
            color: 2 == _currentIndex
                    ? Colors.green
                    : Colors.grey[300],
            ),
        ),new BottomNavigationBarItem(
          title: new Text(
            "我的",
            style: new TextStyle(
              color: 3 == _currentIndex
                    ? Colors.green
                    : Colors.grey[300],
            ),
          ),
          icon: new Icon(
            Icons.account_box,
            color: 3 == _currentIndex
                    ? Colors.green
                    : Colors.grey[300],
            ),
        ),]
      )
    );
  }
}