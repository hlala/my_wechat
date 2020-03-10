import 'package:flutter/material.dart';
import 'package:my_we_chat/contacts/contact_data.dart';
import 'package:my_we_chat/contacts/contact_header.dart';

class ContactItem extends StatefulWidget {
  ContactListItemVo contactListItemVo;

  ContactItem(@required this.contactListItemVo);

  @override
  _ContactItemState createState() => _ContactItemState();
}

class _ContactItemState extends State<ContactItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 20.0,
            width: 370.0,
            color: Color(0xffaaaaaa),
            child: Text(
            widget.contactListItemVo.type,
            style: TextStyle(
              color: Color(0xff333333),
            ),
          ),
          ),
          ContactListItem(widget.contactListItemVo.contactItemList),
        ],
      ),
    );
  }
}