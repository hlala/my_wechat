List letterList = const[
  "⬆️",
  "✨",
  "A",
  "A",
  "A",
  "A",
  "A",
  "A",
  "A",
  "A",
  "A",
  "A",
  "A",
  "A",
  "A",
  "A",
  "A",
  "A",
  "A",
  "A",
  "A",
];

class ContactItemDataVo {
  String picutreUrl;
  String text;

  ContactItemDataVo(this.picutreUrl, this.text);
}

List<ContactItemDataVo> headerDataList = [
  new ContactItemDataVo("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581679936874&di=52dbd49ca06dcba3a27c30423d040033&imgtype=0&src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201505%2F24%2F20150524132709_LdTxY.jpeg", "我的爱"),
  new ContactItemDataVo("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581679936874&di=52dbd49ca06dcba3a27c30423d040033&imgtype=0&src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201505%2F24%2F20150524132709_LdTxY.jpeg", "我的爱"),
  new ContactItemDataVo("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581679936874&di=52dbd49ca06dcba3a27c30423d040033&imgtype=0&src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201505%2F24%2F20150524132709_LdTxY.jpeg", "我的爱"),
];

class ContactListItemVo{
  String type;
  List<ContactItemDataVo> contactItemList;

  ContactListItemVo(this.type, this.contactItemList);
}

List<ContactListItemVo> contactListItemVoList = [
  new ContactListItemVo("A", headerDataList),
  new ContactListItemVo("B", headerDataList),
  new ContactListItemVo("C", headerDataList),
  new ContactListItemVo("D", headerDataList),
  new ContactListItemVo("E", headerDataList),
  new ContactListItemVo("F", headerDataList),
];