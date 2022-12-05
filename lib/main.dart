import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              MusicButton(
                btnColor: Colors.red,
                noteNum: 1,
              ),
              MusicButton(
                btnColor: Colors.orange,
                noteNum: 2,
              ),
              MusicButton(
                btnColor: Colors.yellow,
                noteNum: 3,
              ),
              MusicButton(
                btnColor: Colors.green,
                noteNum: 4,
              ),
              MusicButton(
                btnColor: Colors.blue,
                noteNum: 5,
              ),
              MusicButton(
                btnColor: Colors.teal,
                noteNum: 6,
              ),
              MusicButton(
                btnColor: Colors.purple,
                noteNum: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MusicButton extends StatelessWidget {
  final int noteNum;
  final Color btnColor;
  const MusicButton({
    required this.noteNum,
    required this.btnColor,
    Key? key,
  }) : super(key: key);

  void playSound(int noteNum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNum.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: btnColor,
        ),
        onPressed: () {
          playSound(noteNum);
        },
        child: null,
      ),
    );
  }
}
