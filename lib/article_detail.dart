import 'package:flutter/material.dart';

class ArticleDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ArticleDetailState();
}

class _ArticleDetailState extends State<ArticleDetail> {
  @override
  Widget build(BuildContext context) {
    // 接受列表页携带的参数
    String msg = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text('详情页')),
      body: Text('我是$msg'),
    );
  }
}
