import 'package:my_we_chat/chat/message_page.dart';

class MessageData{
  String pictureUrl;
  String name;
  String message;
  DateTime time;
  MassageType massageType;

  MessageData(this.pictureUrl, this.name, this.message, this.time, this.massageType) {

  }
}

enum MassageType {
  GROUP,
  PERSON,
  SYSTEM
}

List<MessageData> messageDataList = [
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581597132446&di=91874c9855e630ba079fea4e3e7eda15&imgtype=0&src=http%3A%2F%2Fwx2.sinaimg.cn%2Fbmiddle%2F005E0rM7ly1gajukz84t1j30u00mi4a6.jpg", "肖战", "我爱你", DateTime.now(), MassageType.PERSON),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581597132446&di=91874c9855e630ba079fea4e3e7eda15&imgtype=0&src=http%3A%2F%2Fwx2.sinaimg.cn%2Fbmiddle%2F005E0rM7ly1gajukz84t1j30u00mi4a6.jpg", "肖战", "我爱你", DateTime.now(), MassageType.PERSON),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581597132446&di=91874c9855e630ba079fea4e3e7eda15&imgtype=0&src=http%3A%2F%2Fwx2.sinaimg.cn%2Fbmiddle%2F005E0rM7ly1gajukz84t1j30u00mi4a6.jpg", "肖战", "我爱你", DateTime.now(), MassageType.PERSON),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581597132446&di=91874c9855e630ba079fea4e3e7eda15&imgtype=0&src=http%3A%2F%2Fwx2.sinaimg.cn%2Fbmiddle%2F005E0rM7ly1gajukz84t1j30u00mi4a6.jpg", "肖战", "我爱你", DateTime.now(), MassageType.PERSON),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581597132446&di=91874c9855e630ba079fea4e3e7eda15&imgtype=0&src=http%3A%2F%2Fwx2.sinaimg.cn%2Fbmiddle%2F005E0rM7ly1gajukz84t1j30u00mi4a6.jpg", "肖战", "我爱你", DateTime.now(), MassageType.PERSON),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581597132446&di=91874c9855e630ba079fea4e3e7eda15&imgtype=0&src=http%3A%2F%2Fwx2.sinaimg.cn%2Fbmiddle%2F005E0rM7ly1gajukz84t1j30u00mi4a6.jpg", "肖战", "我爱你", DateTime.now(), MassageType.PERSON),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581597132446&di=91874c9855e630ba079fea4e3e7eda15&imgtype=0&src=http%3A%2F%2Fwx2.sinaimg.cn%2Fbmiddle%2F005E0rM7ly1gajukz84t1j30u00mi4a6.jpg", "肖战", "我爱你", DateTime.now(), MassageType.PERSON),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581597132446&di=91874c9855e630ba079fea4e3e7eda15&imgtype=0&src=http%3A%2F%2Fwx2.sinaimg.cn%2Fbmiddle%2F005E0rM7ly1gajukz84t1j30u00mi4a6.jpg", "肖战", "我爱你", DateTime.now(), MassageType.PERSON),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581597132446&di=91874c9855e630ba079fea4e3e7eda15&imgtype=0&src=http%3A%2F%2Fwx2.sinaimg.cn%2Fbmiddle%2F005E0rM7ly1gajukz84t1j30u00mi4a6.jpg", "肖战", "我爱你", DateTime.now(), MassageType.PERSON),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581597132446&di=91874c9855e630ba079fea4e3e7eda15&imgtype=0&src=http%3A%2F%2Fwx2.sinaimg.cn%2Fbmiddle%2F005E0rM7ly1gajukz84t1j30u00mi4a6.jpg", "肖战", "我爱你", DateTime.now(), MassageType.PERSON),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581597132446&di=91874c9855e630ba079fea4e3e7eda15&imgtype=0&src=http%3A%2F%2Fwx2.sinaimg.cn%2Fbmiddle%2F005E0rM7ly1gajukz84t1j30u00mi4a6.jpg", "肖战", "我爱你", DateTime.now(), MassageType.PERSON),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581597132446&di=91874c9855e630ba079fea4e3e7eda15&imgtype=0&src=http%3A%2F%2Fwx2.sinaimg.cn%2Fbmiddle%2F005E0rM7ly1gajukz84t1j30u00mi4a6.jpg", "肖战", "我爱你", DateTime.now(), MassageType.PERSON),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581597132446&di=91874c9855e630ba079fea4e3e7eda15&imgtype=0&src=http%3A%2F%2Fwx2.sinaimg.cn%2Fbmiddle%2F005E0rM7ly1gajukz84t1j30u00mi4a6.jpg", "肖战", "我爱你", DateTime.now(), MassageType.PERSON),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581597132446&di=91874c9855e630ba079fea4e3e7eda15&imgtype=0&src=http%3A%2F%2Fwx2.sinaimg.cn%2Fbmiddle%2F005E0rM7ly1gajukz84t1j30u00mi4a6.jpg", "肖战", "我爱你", DateTime.now(), MassageType.PERSON),
];
