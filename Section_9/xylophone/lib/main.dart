import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const XylophoneApp(),
    );

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource(
        'note$soundNumber.wav',
      ),
    );
  }

  Expanded buildKey(int nodeNumber, Color keyColor) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(0), // replace with your desired radius
          ),
          backgroundColor: keyColor,
        ),
        onPressed: () {
          playSound(nodeNumber);
        },
        child: null,
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
            children: [
              buildKey(
                1,
                Colors.red,
              ),
              buildKey(
                2,
                Colors.orange,
              ),
              buildKey(
                3,
                Colors.yellow,
              ),
              buildKey(
                4,
                Colors.green,
              ),
              buildKey(
                5,
                Colors.teal,
              ),
              buildKey(
                6,
                Colors.blue,
              ),
              buildKey(
                7,
                Colors.purple,
              )
            ],
          ),
        ),
      ),
    );
  }
}
