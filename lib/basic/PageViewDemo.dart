import 'package:flutter/material.dart';

//容纳多个组件页面,可对他们进行滑动切换、可指定滑动的方向、是否反向、互动控制器等属性。
//[children]:子控件列表:[List<Widget>]
//[onPageChanged]:当页面切换时触发[ValueChanged<int>]
//[scrollDirection]:滑动方向 [Axis]
//[reverse]:是否反向[bool]

class PageViewDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  var _colors = [Colors.red, Colors.black, Colors.green];

  //Page控制器
  PageController _controller;

  @override
  void initState() {
    _controller = PageController(
      initialPage: 0, //初始化page索引
      viewportFraction: 1, //Page显示的百分比
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          children: _colors
              .map((color) => Container(
                    color: color,
                  ))
              .toList(),
          onPageChanged: (position) => {print("position:$position")},
          scrollDirection: Axis.vertical,
          controller: _controller,
        ),
      ),
    );
  }
}
