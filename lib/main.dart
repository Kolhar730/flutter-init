import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final WordPair wordPair = new WordPair.random();
    return new MaterialApp(
      title: 'This is a Test Flutter App',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Test App')
        ),
        body: new Center(
        child: new RandomWords(),
      )
      )
    );
  }
}

class RandomWordsState extends State<RandomWords> {
  Widget build(BuildContext context) {
    final WordPair wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}

class RandomWords extends StatefulWidget{
  @override
  RandomWordsState createState() => new RandomWordsState();
}