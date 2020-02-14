import 'package:flutter/material.dart';
import 'package:my_we_chat/chat/message_page.dart';
import 'package:my_we_chat/chat/item_message_widget.dart';
import 'package:my_we_chat/chat/message_data.dart';

enum ItemType {
  GroupChat,
  AddFriends,
  QrCode,
  Pay,
  Help
}

class App extends StatefulWidget {
  @override
  AppPageState createState() => AppPageState();
}

class AppPageState extends State<App> {
  int _currentIndex = 0;

  List<Widget> widgetList = [
    new MessagePage(),
  ];
  // StatefulWidget MessagePage messagePage;
  // Widget ContactsPage contactsPage;  
  // Widget FindPage findPage;  
  // Widget PersonalPage personalPage;

  Widget _currentPage() {
    switch (_currentIndex) {
      case 0:
        Widget res = widgetList[0];
        if (res == null) {
          res = new MessagePage();
          widgetList[0] = res;
        }

        return res;

      // case 1:
      //   if (contactsPage == null) {
      //     contactsPage = new ContactsPage();
      //   }

      //   retuen contactsPage;

      // case 2:
      //   if (findPage == null) {
      //     findPage = new FindPage();
      //   }

      //   retuen findPage;

      // case 3:
      //   if (personalPage == null) {
      //     personalPage = new PersonalPage();
      //   }

      //   retuen personalPage;
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("我的微信"),
        actions: <Widget>[
          GestureDetector(
            onTap: (){
              // 事件
              Navigator.of(context).pushNamed("search");
            },
            child: new Icon(
              Icons.search
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 20.0),
            child: GestureDetector(
              onTap: (){},
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: _currentPage(),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: ((index){
          // 点击事件方法体
          setState(() {
            _currentIndex = index;
          });
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