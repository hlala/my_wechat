import 'package:flutter/material.dart';
import 'package:my_we_chat/view/ToucCallBackWidget.dart';

class SearchPage extends StatefulWidget {
  @override
  SearchState createState() => new SearchState();

}

class SearchState extends State<SearchPage> {
  FocusNode focusNode = new FocusNode();

  void request() {

  }

  List<Widget> buildGridTileList(int count) {
    List<String> datas = new List();
    datas.add("朋友圈");
    datas.add("文章");
    datas.add("公众号");
    datas.add("小程序");
    datas.add("音乐");
    datas.add("表情");
    datas.add("我的");

    List<Widget> resWidgetList = new List();

    for(int i = 0; i < count && i < datas.length; i++) {
      resWidgetList.add(new Container(
        // padding: const EdgeInsets.symmetric(
        //   horizontal: 10.0
        // ),
        alignment: Alignment.center,
        decoration: new BoxDecoration(
          border: new Border.all(color: Color(0xFFFF0000), width: 0.5), // 边色与边宽度
          color: Color(0xFF9E9E9E), // 底色
        ),
        child: Text(
          datas[i],
          // textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.green,
            fontSize: 18.0,
          ),
        ),
      ));
    }

    return resWidgetList;
  }

List<String> getDataList() {
    List<String> list = [];
    for (int i = 0; i < 10; i++) {
      list.add(i.toString());
    }
    return list;
  }

  List<Widget> getWidgetList() {
    return getDataList().map((item) => getItemContainer(item)).toList();
  }

  Widget getItemContainer(String item) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        item,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      color: Colors.blue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top:25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                TouchFoBackWidget(
                  child: Container(
                    margin: EdgeInsets.only(top:15.0, left:10.0),
                    child: Icon(
                      Icons.arrow_back,
                      color: Color(0xffaaaaaa),
                    ), 
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                  }),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 50.0, right: 10.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width:1.0, color:Colors.green),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                          onChanged: (String text){},
                          decoration: InputDecoration(
                            hintText: "这是搜索",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.mic,
                          color: Color(0xffaaaaaa),
                        ),
                      ),
                    ]
                  ),
                )
              ],
            ),
            
            Center(
              child: Container(
              color: Colors.blue,
              // 我开始搜索微信文章的文字
              margin: const EdgeInsets.only(top: 30.0),
              child: Text(
                "我开始搜索微信文章的文字1",
                style: TextStyle(
                  color: Color(0xffb5b5b5),
                  fontSize: 17.0
                ),
              ),
            ),),
            // Center(
            //   child: Container(
            //   color: Colors.red,
            //   // 我开始搜索微信文章的文字
            //   margin: const EdgeInsets.only(top: 50.0),
            //   child: Text(
            //     "我开始搜索微信文章的文字2",
            //     style: TextStyle(
            //       color: Color(0xffb5b5b5),
            //       fontSize: 17.0
            //     ),
            //   ),
            // ), 
            // ),
            Center(
             child: Container(
              // 微信文章下方的六个选项
              color: Colors.yellow,
              margin: const EdgeInsets.only(top: 30.0),
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: new GridView.count(
                shrinkWrap: true, 
                crossAxisCount: 3,                  // 横向 Item 的个数
                children: buildGridTileList(7),
                childAspectRatio: 1.8,
              ),
            ),),
          ],
        ),
      ),
    );
  }
}
