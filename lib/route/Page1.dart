import 'package:flutter/material.dart';
import 'package:flutter_practises/route/Page2.dart';

import 'Page3.dart';

class Page1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Page1State();
  }
}

class Page1State extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          children: [
            FloatingActionButton(
                tooltip: "跳转", onPressed: () => {navigate(context)}),
            FloatingActionButton(
                tooltip: "跳转并替换当前栈",
                onPressed: () => {navigateAndReplace(context)}),
            FloatingActionButton(
              tooltip: "动态跳转",
                onPressed: () => {navigateWithDynamic(context)})
          ],
        ),
      ),
    );
  }

  //静态跳转(关键字与页面的映射关系定义在Main.dart中)
  void navigate(BuildContext context) {
    Navigator.of(context).pushNamed("page2");
  }

  //静态跳转并替换当前栈
  void navigateAndReplace(BuildContext context) {
    Navigator.of(context).pushReplacementNamed("page2");
  }

  //动态跳转
  void navigateWithDynamic(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Page3()));
  }
}
