import 'package:flutter/material.dart';

//用于容纳单个子组件的容器组件,集成若干个单组件的功能,如内外边距、形变、装饰、约束等...
//【widith】:宽度 【int】
//【height】:长度 【int】
// 【color】:背景色 【Color】
// 【padding】:内边距【EdgeInsetsGeometry】
//【margin】:外边距【EdgeInsetsGeometry】
//【child】:子控件 【Widget】
//【alignment】:子控件对齐方式【AlignmentGeometry】
//【decoration】:装饰【Decoration】
class ContainerDemo extends StatelessWidget {
  final List<int> rainbow = [
    0xffff0000,
    0xffff7f00,
    0xffffff00,
    0xff00ff00,
    0xff00ffff,
    0xff0000ff,
    0xff8b00ff
  ];

  final List<double> stops = [0.0, 1 / 6, 2 / 6, 3 / 6, 4 / 6, 5 / 6, 6 / 6];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        // color: Colors.blue,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        child: Icon(Icons.android_rounded),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
            // color: Colors.blue,
            gradient: LinearGradient(
              stops: stops,
              colors: rainbow.map((e) => Color(e)).toList(),
            ),
            borderRadius: BorderRadius.all(Radius.circular(9))),
      ),
    );
  }
}
