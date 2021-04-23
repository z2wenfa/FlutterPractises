import 'package:flutter/material.dart';

//列表显示,可以通过builder、separated、custom等构造。有内边距、是否反向、滑动控制器等属性
//构造方法主要是两种 ListView.builder创建没有separate的列表,ListView.separated构造具有separate的列表
//[itemBuilder]:构造ViewHolder[Widget Function(BuildContext context, int index)]
//[itemCount]:列表数量[int]
//[separatorBuilder]:分隔符构造器[Widget Function(BuildContext context, int index)]]
class ListViewDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  var _colors = [
    Colors.greenAccent,
    Colors.green,
    Colors.blue,
    Colors.red,
    Colors.white,
    Colors.amber,
    Colors.cyanAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _createListView2(),
        height: 600,
      ),
    );
  }

  ListView _createListView1() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) =>
          _createListItem(context, index),
      itemCount: _colors.length,
      padding: EdgeInsets.all(9),
    );
  }

  ListView _createListView2() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) =>
          _createListItem(context, index),
      itemCount: _colors.length,
      padding: EdgeInsets.all(9),
      separatorBuilder:(BuildContext context, int index)=>Divider(
        height: 4,
        color: Colors.white,
        thickness: 1,
      ),
    );
  }

  Widget _createListItem(BuildContext context, int index) {
    return Container(
      color: _colors[index],
      child: Center(
        child: Text("$index"),
      ),
      height: 150,
    );
  }
}
