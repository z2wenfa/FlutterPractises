import 'package:flutter/material.dart';
//输入的控件,具有复杂的属性,可指定控制器(默认值等)、文字样式、装饰线、行数限制、游标样式、接收输入变化、完成输入事件等

//基础属性:
//[controller]:控制器 [TextEditingController]
//[style]:文字样式[TextStyle]
//[decoration]:装饰线[InputDecoration]
//[onEditingComplete]:输入完成事件[Function()]
//[onSubmitted]:提交事件[Function(String)]
//[onChanged]:输入事件[Function(String)]

//TextField行数和cursor
//[minLines]:最小行数[int]
//[maxLines]:最大行数[int]
//[cursorRadius]:光标半径[Radius]
//[cursorColor]:光标颜色[Color]
//[cursorWidth]:光标宽度[int]
//[showCursor]:是否显示光标[bool]
//[autofocus]:自动聚焦[bool]

//decoration的复杂装饰
//[InputDecoration]:
//[border]:边线相关
//[helper]:左下角提示
//[counter]:右下角提示
//[prefix]:输入框内部左侧
//[suffix]:输入框内部右侧
//[lable]:无焦点时文字
//[hint]:提示文字相关
//[border]:边线相关

class TextFieldDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TextFieldState();
}

class _TextFieldState extends State<TextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: TextEditingController(),
            style: TextStyle(color: Colors.blue),
            onEditingComplete: () => print("onEditingComplete"),
            onSubmitted: (s) => print("onSubmitted:$s"),
            onChanged: (s) => print("onChanged:$s"),
            minLines: 1,
            maxLines: 2,
            cursorColor: Colors.red,
            autofocus: false,
            autofillHints: {'提示消息'},
          ),

          //添加间距
          SizedBox(height: 10),

          TextField(
            controller: TextEditingController(),
            style: TextStyle(color: Colors.blue),
            onEditingComplete: () => print("onEditingComplete"),
            onSubmitted: (s) => print("onSubmitted:$s"),
            onChanged: (s) => print("onChanged:$s"),
          ),

          SizedBox(height: 10),

          TextField(
            decoration: InputDecoration(
              labelText: "用户名",
              hintText: "请输入用户名",
              hintStyle: TextStyle(color: Colors.blue),
              prefixIcon:Icon(Icons.account_circle),
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.green),
                  borderRadius: const BorderRadius.all(Radius.circular(9))
              ),
            ),
          )
        ],
      ),
    );
  }
}
