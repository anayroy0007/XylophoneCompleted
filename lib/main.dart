import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void sound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }
  Expanded tiles({Color color, int soundnumber}){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          sound(soundnumber);
        },
        color: color,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              tiles(color: Colors.red, soundnumber: 1 ),
              tiles(color: Colors.orange, soundnumber: 2 ),
              tiles(color: Colors.yellow, soundnumber: 3 ),
              tiles(color: Colors.green, soundnumber: 4),
              tiles(color: Colors.teal, soundnumber: 5),
              tiles(color: Colors.indigo, soundnumber: 6 ),
              tiles(color: Colors.deepPurple, soundnumber: 7 ),
            ],
          ),
        ),
      ),
    );
  }
}
