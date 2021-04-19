import 'package:flutter/material.dart';

//用于容纳单个子组件的容器组件,集成若干个单组件的功能,如内外边距、形变、装饰、约束等...
//
class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
      ),
    );
  }
}
