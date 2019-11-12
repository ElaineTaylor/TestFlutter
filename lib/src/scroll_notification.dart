import 'package:flutter/material.dart';

class ScrollNotificationTestRoute extends StatefulWidget {
  @override
  _ScrollNotificationState createState() => new _ScrollNotificationState();
}

class _ScrollNotificationState extends State<ScrollNotificationTestRoute> {
  String _progress = "0%";

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        child: NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification notification) {
        double progress =
            notification.metrics.pixels / notification.metrics.maxScrollExtent;
        setState(() {
          _progress = "${(progress * 100).toInt()}%";
        });
        print("BottomEdge:${notification.metrics.extentAfter == 0}");
        return true;
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          ListView.builder(
              itemCount: 100,
              itemExtent: 50.0,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("$index"),
                );
              }),
          CircleAvatar(
            radius: 30.0,
            child: Text(_progress),
            backgroundColor: Colors.black54,
          ),
        ],
      ),
    ));
  }
}
