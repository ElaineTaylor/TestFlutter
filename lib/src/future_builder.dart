import 'package:flutter/material.dart';

class FutureBuilderRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("异步更新UI之FutureBuilder"),
        ),
        body: Center(
          child: FutureBuilder<String>(
              future: mockNetworkData(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return Text("Error:${snapshot.error}");
                  } else {
                    return Text("Connects:${snapshot.data}");
                  }
                } else {
                  return CircularProgressIndicator();
                }
              }),
        ));
  }
}

Future<String> mockNetworkData() async {
  return Future.delayed(Duration(seconds: 2), () => "我是从互联网上获取的数据");
}
