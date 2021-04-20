import 'package:flutter/material.dart';

//布局方向为横向的Flex布局,可容纳多个组件,其他属性与Flex一致
class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Color(0x4484FFFF),
      alignment: Alignment.center,
      child: Row(
        children: [
          Text("data",)
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }

}