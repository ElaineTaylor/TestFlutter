import 'package:flutter/material.dart';

class WillPopScopeRoute extends StatefulWidget {
  @override
  WillPopScopeState createState() {
    return new WillPopScopeState();
  }
}

class WillPopScopeState extends State<WillPopScopeRoute> {
  DateTime _lastPressedAt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("导航返回拦截"),
        ),
        body: new WillPopScope(
            child: Container(
              alignment: Alignment.center,
              child: Text("1秒内连续按两次返回按钮退出"),
            ),
            onWillPop: () async {
              if (_lastPressedAt == null ||
                  DateTime.now().difference(_lastPressedAt) >
                      Duration(seconds: 1)) {
                _lastPressedAt = DateTime.now();
                return false;
              }
              return true;
            }));
  }
}
