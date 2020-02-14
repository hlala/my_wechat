import 'package:flutter/material.dart';
import 'package:my_we_chat/chat/item_message_widget.dart';
import 'package:my_we_chat/chat/message_data.dart';

class MessagePage extends StatefulWidget {  
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
    @override
  void initState() {
    super.initState();

    new Future.delayed(Duration(seconds: 3),() {
      print("打开了聊天页面");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: messageDataList.length * 2 - 1,
        itemBuilder: (BuildContext context, int index){
          if (index.isOdd) {
            return new Divider(
              height: 1.0,
              color: Color(0xff333333),
            );
          } else {
            int i = index ~/ 2;
            return new ItemMessageWidget(messageDataList[i]);
          }
        }),
    );
  }
}