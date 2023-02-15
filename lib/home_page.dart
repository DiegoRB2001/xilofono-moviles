import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Load from assets, store as a variable.
  Audio audio1 = Audio.load('assets/sounds/assets_note1.wav');
  Audio audio2 = Audio.load('assets/sounds/assets_note2.wav');
  Audio audio3 = Audio.load('assets/sounds/assets_note3.wav');
  Audio audio4 = Audio.load('assets/sounds/assets_note4.wav');
  Audio audio5 = Audio.load('assets/sounds/assets_note5.wav');
  Audio audio6 = Audio.load('assets/sounds/assets_note6.wav');
  Audio audio7 = Audio.load('assets/sounds/assets_note7.wav');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          xilophoneKey(audio1, Colors.red),
          xilophoneKey(audio2, Colors.orange),
          xilophoneKey(audio3, Colors.yellow),
          xilophoneKey(audio4, Colors.green),
          xilophoneKey(audio5, Colors.lightBlue),
          xilophoneKey(audio6, Colors.blue),
          xilophoneKey(audio7, Colors.purple),
        ],
      ),
    );
  }

  TextButton xilophoneKey(audio, color) {
    return TextButton(
        style: TextButton.styleFrom(
            minimumSize: const Size(200.0, 125.2), backgroundColor: color),
        onPressed: () {
          audio.play();
        },
        child: Container());
  }
}
