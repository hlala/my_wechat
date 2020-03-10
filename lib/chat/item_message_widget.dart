import 'package:flutter/material.dart';
import 'package:my_we_chat/chat/message_data.dart';

class ItemMessageWidget extends StatefulWidget {
  final MessageData messageData;

  ItemMessageWidget(this.messageData);

  @override
  _ItemMessageWidgetState createState() => _ItemMessageWidgetState();
}

class _ItemMessageWidgetState extends State<ItemMessageWidget> {

  String _getTimeString() {
    return widget.messageData.time.hour.toString() + ":" + widget.messageData.time.minute.toString() + ":" + widget.messageData.time.second.toString();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 20.0,
      ),
      child: Row(
        children: [
          Image.network(
            //图片地址
            widget.messageData.pictureUrl,
            width: 60.0,
            height: 60.0,
            //填充模式
            fit: BoxFit.fitWidth,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            // color: Colors.yellow,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                widget.messageData.name,
              ),
              Text(widget.messageData.message),
            ],
          ),
          ),
        ],
      ),
    );
  }
}
