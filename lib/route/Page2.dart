import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          FloatingActionButton(onPressed: () => {Navigator.of(context).pop()}),
        ],
      ),
    );
  }
}
