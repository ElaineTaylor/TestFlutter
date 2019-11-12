import 'package:flutter/material.dart';

class ColorRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("颜色"),
        ),
        body: ListView(
          children: <Widget>[
            NavBar(
              title: "标题",
              color: Colors.blue,
            ),
            NavBar(
              title: "标题",
              color: Colors.white,
            ),
          ],
        ));
  }
}

class NavBar extends StatelessWidget {
  final String title;
  final Color color;

  NavBar({
    Key key,
    this.color,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 52,
        minHeight: 50,
      ),
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 3),
            blurRadius: 3,
          )
        ],
      ),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: color.computeLuminance() < 0.5 ? Colors.white : Colors.black,
        ),
      ),
      alignment: Alignment.center,
    );
  }
}
