import 'package:flutter/material.dart';

final List<String> listData = <String>['hello', 'hi'];
final List<int> colorCodes = <int>[600, 500, 100];

//定义了一个有状态控件，继承自StatefulWidget
class ArticleList extends StatefulWidget {
  @override
  // 为StatefulWidget控件ArticleList定义一个状态类
  State<StatefulWidget> createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('列表页')),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: listData.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'article_detail',
                  arguments: '${listData[index]}');
            },
            child: Container(
              height: 100,
              // color: Colors.amber[colorCodes[index]],
              child: Row(
                children: <Widget>[
                  buildLeftRow(context),
                  buildRightRow(context)
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildLeftRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(4),
        child: Image.network(
            'https://cw1.tw/CW/images/article/201803/article-5ab3573ec0d41.jpg'));
  }

  Widget buildRightRow(BuildContext context) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 4.0),
          child: Text(
            '我是标题，哈哈哈哈哈哈哈哈',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 20),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Text(
            '我是文章的部分内容我是文章的部分内容我是文章的部分内容我是文章的部分内容我是文章的部分内容我是文章的部分内容我是文章的部分内容我是文章的部分内容',
            style: TextStyle(color: Color(0xFF8E8D92), fontSize: 16),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    ));
  }
}
