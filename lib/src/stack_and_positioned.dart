import 'package:flutter/material.dart';

class StackAndPositioned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("层叠布局Stack、Positioned"),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: <Widget>[
              Positioned(
                child: Text("I am Jack"),
                left: 18.0,
              ),
              Container(
                child: Text(
                  "hello world",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
              ),
              Positioned(
                top: 18.0,
                child: Text("Your friends"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
