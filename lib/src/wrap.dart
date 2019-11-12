import 'package:flutter/material.dart';

class WrapRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("流式布局Wrap"),
      ),
      body: Center(
        child: Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          alignment: WrapAlignment.center,
          children: <Widget>[
            new Chip(
              label: new Text("Hamilton"),
              avatar: new CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('A'),
              ),
            ),
            new Chip(
              label: new Text("Lafayette"),
              avatar: new CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('M'),
              ),
            ),
            new Chip(
              label: new Text("Mulligan"),
              avatar: new CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('H'),
              ),
            ),
            new Chip(
              label: new Text("Laurens"),
              avatar: new CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('J'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
