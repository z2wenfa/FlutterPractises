import 'package:flutter/material.dart';
//灵活组件,只能用于Row、Column和lex布局中,可嵌套孩子利用剩余空间对占位空间进行延展,也可指定适应类型
//[child]:孩子布局[widget]
//[fit]:适应模式 [FlexFit]
//[flex]:剩余空间占比[int]
class FlexibleDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(child: Container(
            color: Colors.blue,
          ), flex: 1,),
          Flexible(child: Container(
            color: Colors.red,
          ), flex: 2,
          fit: FlexFit.loose,),
        ],
      ),
    );
  }

}