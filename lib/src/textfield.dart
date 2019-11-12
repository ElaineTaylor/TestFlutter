import 'package:flutter/material.dart';

//输入框和表单之输入框
class TextFieldRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _unameController = new TextEditingController();
    TextEditingController _upwdController = new TextEditingController();
    TextEditingController _selectionController = new TextEditingController();
    _selectionController.text = "hello world";
    _selectionController.selection = TextSelection(
        baseOffset: 2, extentOffset: _selectionController.text.length);
    return Scaffold(
      appBar: AppBar(
        title: Text("输入框和表单之输入框"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              autofocus: true,
              controller: _unameController,
              decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或者邮箱",
                  prefixIcon: Icon(Icons.person)),
            ),
            TextField(
              controller: _upwdController,
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "您的登录密码",
                  prefixIcon: Icon(Icons.lock)),
              obscureText: true,
            ),
            FlatButton(
              child: Text("打印名字和密码"),
              onPressed: () {
                print(_unameController.text + _upwdController.text);
              },
            ),
            TextField(
              controller: _selectionController,
            ),

          ],
        ),
      ),
    );
  }
}


