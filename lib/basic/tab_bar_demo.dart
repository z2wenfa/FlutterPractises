import 'dart:ui';

import 'package:flutter/material.dart';

/**
 * Created by z2wenfa on 2021/4/27.
 */

///可滑动和点击标签栏,通常用于AppBar的底部,可与TabBarView联用,实现滑动页面效果
///[controll]:控制器[TabController]
///[tabs]:标签控件[List<Widget>]
///[onTab]:页面点击事件[Function(int)]
///[labelColor]:标签文本选中颜色[int]
///[lableStyle]:标签文本样式[TextStyle]
///[unselectedLabelColro]:未选中标签颜色[int]
///[unselectedLabelStyle]:未选中标签样式[TextStyle]
///[lablePadding]:标签的内间距[EdgeInsetsGeometry]
///[indicatorWeight]:指示器高度[double]
///[indicatorColor]:指示器颜色[Color]
class TabBarDemo extends StatefulWidget {
  TabBarDemo({Key key}) : super(key: key);

  @override
  _TabBarDemoState createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo>
    with SingleTickerProviderStateMixin {
  var _titles = ["Android", "Java", "数学"];

  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: _titles.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          height: 100,
        ),
        Positioned(
          bottom: 200,
          child: TabBar(
            controller: _tabController,
            tabs: _titles.map((e) => Text(e)).toList(),
            onTap: (value) {},
            labelColor: Colors.blue,
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(fontSize: 16),
            labelPadding: EdgeInsets.only(bottom: 10),
            indicatorWeight: 3,
            indicatorColor: Colors.blue,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
          ),
        ),
        Container(
          color: Colors.red,
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: TabBarView(
            children: _titles
                .map((title) => Container(
                      height: 100,
                      child: Text(title),
                      color: Colors.blue,
                    ))
                .toList(),
            controller: _tabController,
          ),
        )
      ]),
    );
  }
}
