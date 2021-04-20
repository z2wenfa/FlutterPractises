import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 布局方向为竖直的Flex布局,可容纳多个组件,其他属性与Flex一致。
 * 【children】:子组件列表【List<Widget>】
 */
class ColumnDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Container(
       alignment: Alignment.center,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
            Icon(Icons.map),
           Icon(Icons.android_rounded)
         ],
       ),
     );
  }

}