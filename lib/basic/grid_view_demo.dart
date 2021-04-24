import 'package:flutter/material.dart';

/**
 * Created by z2wenfa on 2021/4/24.
 */
///常用GridView.builder()构造方法生成
///【gridDelegate】：网格控件属性代理【SliverGridDelegate】, 【crossAxisCount】:列数 ,[mainAxisSpacing]:主轴间距,[crossAxisSpacing]:交叉轴间距
///【itemCount】：子项数量[int]
///【itemBuilder】:子项构造器
class GridViewDemo extends StatefulWidget {
  GridViewDemo({Key key}) : super(key: key);

  @override
  _GridViewDemoState createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {
  var _colors = [
    Colors.greenAccent,
    Colors.green,
    Colors.blue,
    Colors.red,
    Colors.white,
    Colors.amber,
    Colors.cyanAccent,
    Colors.black
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //条目数量
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
        ),
        itemBuilder: (context, index) => Container(
          child: Container(
            color: _colors[index],
          ),

        ),
        itemCount: _colors.length,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
