import 'package:flutter/material.dart';

//文本，字体样式
class TextRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本，字体样式"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, //显示在界面的上，中，下
          children: <Widget>[
            Text(
              "位置，相当于gravity" * 4,
              textAlign: TextAlign.start,
            ),
            Text(
              "行数，省略号" * 6,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "字体放大，按照倍数",
              textScaleFactor: 1.5,
            ),
            Text(
              "样式",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                  height: 1.2,
                  background: new Paint()..color = Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
            Text.rich(TextSpan(children: [
              TextSpan(text: "Home:"),
              TextSpan(
                text: "https://flutterchina.club",
                style: TextStyle(color: Colors.brown),
              )
            ])),
            DefaultTextStyle(
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("示例一(DefaultTextStyle统一设置子类的风格)"),
                  Text("示例二"),
                  Text(
                    "示例三",
                    style: TextStyle(
                      inherit: false,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "使用ttf字体样式test,注意格式问题",
              style: const TextStyle(
                color: Colors.amberAccent,
                fontFamily: 'FlamanteRoma',
                fontSize: 20.0,
                inherit: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
