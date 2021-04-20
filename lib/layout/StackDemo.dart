import 'package:flutter/material.dart';

//可容纳多个组件,以堆叠的方式摆放子组件,后者居上。拥有alignment属性,可与Positioned组件联合使用,精准定位
class StackDemo extends StatelessWidget {

  var positionedDemo =  Positioned(
      top: 10,
      child: Container(
        width: 40,
        height: 40,
        color: Colors.green,
      ));

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
         Container(
            color: Colors.blue,
            width: 400,
            height: 400,
          ),
          Container(
            color: Colors.red,
            width: 200,
            height: 200,
          ),
          positionedDemo
        ],
      ),
    );
  }
}


