import 'package:flutter/material.dart';

//图片（未做完(使用自定义字体图标,没找到ttf格式图标文件)
class PicRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String icons = "";
    icons += "\uE914";
    icons += "\uE000";
    icons += "\uE90D";
    return Scaffold(
      appBar: AppBar(
        title: Text("图片和icon）"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/agree.png"),
              width: 100.0,
            ),
            Image(
              image: NetworkImage(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
              width: 100.0,
            ),
            Image.network(
              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
              width: 100.0,
            ),
            Image(
              image: AssetImage("assets/images/one.png"),
              width: 100.0,
              height: 200.0,
              color: Colors.blue,
              colorBlendMode: BlendMode.difference,
              repeat: ImageRepeat.repeatY,
            ),
            Text(
              icons,
              style: TextStyle(
                  fontFamily: "MaterialIcons",
                  fontSize: 24.0,
                  color: Colors.green),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.ac_unit,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.account_balance,
                  color: Colors.blue,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}