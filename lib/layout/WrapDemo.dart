import 'package:flutter/material.dart';

//可容纳多个组件,按照指定方向依次排序,可以方便的处理孩子组件的间距,当越界时可以自动换行,拥有主轴和交叉轴的对齐方式,比较灵活。
// [children]:组件列表 【List<Widget>】
// [alignment]:主轴对齐 [WrapAlignment]
//【crossAxisAlignment】:交叉轴对齐 [CrossAxisAlignment]
//[textDirection]:文字方向 [TextDirection]
//[veerticalDirection]:竖直方向 [VerticalDirection]

class WrapDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Wrap(
        alignment: WrapAlignment.spaceAround,
        children: [
          Icon(Icons.android_rounded),
        ],
      );
  }

}