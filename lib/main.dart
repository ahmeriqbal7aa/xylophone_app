import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

// void main() {
//   generateWordPairs().forEach(print);
// }

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.lime.shade700,
          title: Text(
            'Xylophone App',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SafeArea(
          //background image container
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/Pic.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: XylophonePage(),
            ),
          ),
        ),
      ),
    );
  }
}

class XylophonePage extends StatelessWidget {
  //here we made a function "playsound()"
  void playsound(int number) {
    final play = AudioCache();
    play.play('note$number.wav');
  }

  // here we made a function "CreateButton" that return Flat Button
  FlatButton CreateButton(Color color, int number, int num) {
    return FlatButton(
      color: color,
      onPressed: () {
        playsound(number);
      },
      child: Text('Note$num', style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(3.0, 7.0, 3.0, 7.0),
            child: CreateButton(Colors.blue.shade700, 1, 1),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(8.0, 7.0, 8.0, 7.0),
            child: CreateButton(Colors.green.shade700, 2, 2),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(12.0, 7.0, 12.0, 7.0),
            child: CreateButton(Colors.red.shade700, 3, 3),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.0, 7.0, 16.0, 7.0),
            child: CreateButton(Colors.yellow.shade700, 4, 4),
          ),
        ),
        Expanded(
          child: Padding(
              padding: EdgeInsets.fromLTRB(19.0, 7.0, 19.0, 7.0),
              child: CreateButton(Colors.orange.shade700, 5, 5)),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(22.0, 7.0, 22.0, 7.0),
            child: CreateButton(Colors.grey.shade700, 6, 6),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(27.0, 7.0, 27.0, 7.0),
            child: CreateButton(Colors.teal.shade700, 7, 7),
          ),
        ),
      ],
    );
  }
}
