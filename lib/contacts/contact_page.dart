import 'package:flutter/material.dart';
import 'package:my_we_chat/contacts/contact_data.dart';
import 'package:my_we_chat/contacts/contact_header.dart';
import 'package:my_we_chat/contacts/item_contact_widget.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

  List<Widget> _getLetterListWidget() {
    List<Widget> resWidgetList = new List();

    for (String letter in letterList) {
      resWidgetList.add(new Container(
        padding: EdgeInsets.symmetric(vertical: 2.0),
        child: Text(
          letter,
          style: TextStyle(
            color: Color(0xff666666),
          ),
        ),
      ));
    }

    return resWidgetList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.topRight,
        children: <Widget>[
          // list
          Container(
            // color: Colors.blue,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20.0),

              itemCount: 1 + contactListItemVoList.length + 1,
              itemBuilder: (BuildContext context, int index) {
              if (0 == index) {
                return ContactListItem(headerDataList);
              } else if ((1 + contactListItemVoList.length + 1) - 1 ==index) {
                return Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 5.0, bottom: 15.0),
                    child: Text("到底部了哦~"),
                  ),
                );
              } else {
                // 具体的列表内部
                return ContactItem(contactListItemVoList[index - 1]);
              }
            }),
          ),
          // 旁边的字母
          Container(
            // width: 20.0,
            margin: EdgeInsets.only(top: 5.0, right: 5.0),
            // color: Colors.yellow,
            child: Column(
              children: _getLetterListWidget(),
            ),
          ),
        ],
      ),
    );
  }
}