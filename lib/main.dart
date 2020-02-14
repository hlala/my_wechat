import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'search/search.dart';

import 'app.dart';
import 'loading.dart';

void main() => runApp(
    MyApp()
  );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xffebebeb),
        // cardColor: Color(0xff393a3f),
      ),
      home: MyHomePage(title: '我的微信启动页'),

      routes: <String, WidgetBuilder>{
        "app": (BuildContext context) => new App(),
        "friends": (_) => new WebviewScaffold(
          url: "https://www.baidu.com",
          appBar: new AppBar(
            title: new Text("我的微信朋友圈"),
          ),
          withZoom: true,
          withLocalStorage: true,
        ),
        "search": (BuildContext context) => new SearchPage(),
      },
    );
  }
}

