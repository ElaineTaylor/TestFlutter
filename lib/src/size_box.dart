import 'package:flutter/material.dart';

class SizeBoxRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget redbox = DecoratedBox(decoration: BoxDecoration(color: Colors.red));
    return Scaffold(
      appBar: AppBar(
        title: Text("Sizebox"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: 80.0,
            height: 80.0,
            child: redbox,
          )
        ],
      ),
    );
  }
}
