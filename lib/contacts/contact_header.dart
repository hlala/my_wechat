import 'package:flutter/material.dart';
import 'package:my_we_chat/contacts/contact_data.dart';

class ContactListItem extends StatelessWidget {
  List<ContactItemDataVo> headerDataLists;

  ContactListItem(@required this.headerDataLists);

  List<Widget> _getHeaderWidgetList() {
    List<Widget> resWidgetList = new List();

    for (var headerVo in headerDataLists) {
      resWidgetList.add(new Container(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Row(
          children: <Widget>[
            Image.network(
            //图片地址
            headerVo.picutreUrl,
            width: 40.0,
            height: 40.0,
            //填充模式
            fit: BoxFit.fitHeight,
          ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text("${headerVo.text}" + ", haha"),
            ),
          ],
        ),
      ));
    }
  

    return resWidgetList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: _getHeaderWidgetList(),
      ),
    );
  }
}