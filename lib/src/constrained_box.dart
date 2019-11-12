import 'package:flutter/material.dart';

class ConstrainedBoxRoute extends StatelessWidget {
  Widget redbox = DecoratedBox(decoration: BoxDecoration(color: Colors.red));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstraintedBox"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(minWidth: double.infinity, minHeight: 50.0),
        child: Container(
          height: 5.0,
          child: redbox,
        ),
      ),
    );
  }
}

/*const BoxConstraints({
this.minWidth = 0.0, //最小宽度
this.maxWidth = double.infinity, //最大宽度
this.minHeight = 0.0, //最小高度
this.maxHeight = double.infinity //最大高度
})*/
/*
UnconstrainedBox对父限制的“去除”并非是真正的去除
*/
