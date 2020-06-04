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
              height: 50,
              color: Colors.amber[colorCodes[index]],
              child: Center(
                child: Text('${listData[index]}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
