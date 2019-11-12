import 'package:flutter/material.dart';

class StreamBuilderRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("异步UI更新之StreamBuilder"),
        ),
        body: StreamBuilder<int>(
          stream: counter(),
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            if (snapshot.hasError) return Text('Error:${snapshot.error}');
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Text("等待数据...");
                break;
              case ConnectionState.active:
                return Text("active:${snapshot.data}");
                break;
              case ConnectionState.done:
                return Text("Stream已关闭");
                break;
              case ConnectionState.none:
                return Text("没有Stream");
                break;
            }
            return null;
          },
        ));
  }
}

Stream<int> counter() {
  return Stream.periodic(Duration(seconds: 1), (i) {
    return i;
  });
}
