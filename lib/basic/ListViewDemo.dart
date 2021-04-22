import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ListViewDemoState();

}

class _ListViewDemoState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:  _createListView1(),
        height: 600,
      ),
    );
  }

  ListView _createListView1(){
    return ListView(
      children: [
        Container(
          color: Colors.red,
          height: 100,
          width: 100,
          child: Text("1"),
        ),
        Container(
          color: Colors.blue,
          height: 100,
          width: 100,
          child: Text("2"),
        ),
        Container(
          color: Colors.greenAccent,
          height: 100,
          width: 100,
          child: Text("3"),
        ),
      ],
    );
  }
}
