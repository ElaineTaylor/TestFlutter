import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

//随机数
class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    print(wordPair);
    return Scaffold(
      appBar: AppBar(title: Text("随机数"),),
      body: Center(
        child: new Text(wordPair.toString()),
      ),
    );
  }
}
