import 'package:flutter/material.dart';

//一个应用顶部栏的通用结构,可在指定的部位放置相应的组件,常用语Scaffold组件中。
//【leading】:左侧组件 【Widget】
//【title】:中间组件 【Widget】
//【actions】:右侧组件 【List<Widget>】
//【centerTitle】:中间组件是否居中【bool】
class AppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text("标题"),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.access_alarms), onPressed: () => {print("右侧按钮点击")})
        ],
      ),
    );
  }
}
