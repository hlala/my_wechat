import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'app.dart';
import 'loading.dart';
import 'main.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();

    new Future.delayed(Duration(seconds: 3),() {
      print("Flutter高仿微信启动");
      Navigator.of(context).pushReplacementNamed("app");
    });
  }

  @override
  Widget build(BuildContext context) {

       return new Container(
          child: new Image.asset(
          "images/wechat_loading_bg.jpg",
        )
        );
  }
}