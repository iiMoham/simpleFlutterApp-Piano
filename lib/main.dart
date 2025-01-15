// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
// import 'package:audioplayers/src/audio_cache.dart';

// import 'package:audioplayers/src/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  
  void playSound(int soundNum) {
    final player = AudioPlayer();
    final duration = player.setAsset("assets/note$soundNum.wav");
    player.play();
  }

  Expanded buildKey(int numOfSound , Color color) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          style: ButtonStyle(enableFeedback: false),
          onPressed: () {
            playSound(numOfSound);
          },
          child: Text(""),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
            child: Text(
              "Piano App",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1 , Colors.red),
              buildKey(2 ,Colors.orange),
              buildKey(3 , Colors.yellow),
              buildKey(4 , Colors.green),
              buildKey(5 , Colors.teal),
              buildKey(6 , Colors.blue),
              buildKey(7 , Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
