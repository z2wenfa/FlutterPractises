import 'package:flutter/material.dart';

//  显示一个控件,并使其居中显示,是Align组件的一种精简模式
//  【child】:孩子控件 【Widegt】
class CenterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(Icons.ac_unit),
    );
  }
}
