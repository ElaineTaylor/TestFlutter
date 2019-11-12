import 'package:flutter/material.dart';

//线性布局Row，Column同理Row
//如果Row里面嵌套Row或者Column中嵌套Column，那么只有对最外面的Row或Column会占用尽可能大的空间，里面Row或Column所占用的空间为实际大小
class RowRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("线性布局之row,column"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("hello world"),
                Text("I am Jack"),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("hello world"),
                Text("I am Jack"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Text("hello world"),
                Text("I am Jack"),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              verticalDirection: VerticalDirection.up,
              children: <Widget>[
                Text("hello world" ,style: TextStyle(fontSize: 30.0),),
                Text("I am Jack")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
