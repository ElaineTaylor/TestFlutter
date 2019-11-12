import 'package:flutter/material.dart';

///按钮
class ButtonRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RaisedButton(
              child: Text("普通按钮"),
              onPressed: () => {},
            ),
            FlatButton(
              child: Text("扁平按钮"),
              onPressed: () => {},
            ),
            OutlineButton(
              child: Text("边框按钮"),
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () => {},
            ),
            FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.light,
              splashColor: Colors.grey,
              child: Text("Submit"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
