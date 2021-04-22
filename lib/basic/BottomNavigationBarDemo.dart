import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//一个底部导航栏,通常用于Scaffold组件的底部,可指定颜色和模式,接收点击回调,可与PageView实现切页效果

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigationBarDemo> {

  var _iconMap = {
    "首页": Icons.account_balance,
    "书橱": Icons.print,
    "我的": Icons.account_circle_outlined
  };

  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
      alignment: Alignment.bottomCenter,
      child: BottomNavigationBar(
        items: _getBottomNavigationBarItems(),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (position) => setState(() => _index = position),
      ),
    ));
  }

  List<BottomNavigationBarItem> _getBottomNavigationBarItems() {
    return _iconMap.keys
        .map((e) => BottomNavigationBarItem(
              icon: Icon(_iconMap[e]),
              label: e,
            ))
        .toList();
  }
}
