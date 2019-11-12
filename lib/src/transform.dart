import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transform变换"),
      ),
      body: Column(
        children: <Widget>[
          Padding(padding: const EdgeInsets.symmetric(vertical: 20.0)),
          Container(
            color: Colors.black,
            child: new Transform(
              transform: new Matrix4.skewY(0.3),
              alignment: Alignment.topRight,
              child: new Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.deepOrange,
                child: const Text('Apartment for rent'),
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(vertical: 20.0)),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: Transform.translate(
              offset: Offset(-20.0, -5.0),
              child: Text("Hello world"),
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(vertical: 20.0)),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: Transform.rotate(
              angle: math.pi / 2,
              child: Text("Hello world"),
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(vertical: 20.0)),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: Transform.scale(
              scale: 1.5,
              child: Text("Hello world"),
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(vertical: 20.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.red),
                child: Transform.scale(
                  scale: 1.5,
                  child: Text("Hello world"),
                ),
              ),
              Text(
                "您好",
                style: TextStyle(color: Colors.green, fontSize: 18.0),
              ),
            ],
          ),
          Padding(padding: const EdgeInsets.symmetric(vertical: 20.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.red),
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Text("Hello world"),
                ),
              ),
              Text(
                "你好",
                style: TextStyle(color: Colors.green, fontSize: 18.0),
              )
            ],
          )
        ],
      ),
    );
  }
}
