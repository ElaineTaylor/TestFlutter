import 'package:flutter/material.dart';

class PaddingRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Padding"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text("Hello world"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text("I am Jack"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0, 60.0, 20.0),
                  child: Text("Your friend"),
                )
              ]),
        ),
      ),
    );
  }
}
