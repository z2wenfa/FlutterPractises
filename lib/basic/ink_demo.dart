import 'package:flutter/material.dart';

/**
 * Created by z2wenfa on 2021/4/23.
 * 组件添加点击事件
 */
//[onTap]:点击事件[Function()]
//[onDoubleTap]:双击事件[Function()]
//[onLongPress]:长按事件[Function()]

class InkDemo extends StatefulWidget {
  InkDemo({Key key}) : super(key: key);

  @override
  _InkDemoState createState() => _InkDemoState();
}

class _InkDemoState extends State<InkDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        child: Image.asset("assets/images/beauty.webp"),
        onTap: () => print("点击事件"),
        onDoubleTap: () => print("双击事件"),
        onLongPress: () => print("长按事件"),
      ),
    );
  }
}
