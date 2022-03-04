import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Xylophone",
      home: Xylo(),
    );
  }
}

class Xylo extends StatefulWidget {
  const Xylo({Key? key}) : super(key: key);

  @override
  _XyloState createState() => _XyloState();
}

class _XyloState extends State<Xylo> {
  void playAudio(int i) {
    final player = AudioCache();
    player.play("note$i.wav");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              playAudio(1);
            },
            child: const Text(
              "1",
              style: TextStyle(fontSize: 22,color: Colors.white),
            ),
            style: TextButton.styleFrom(backgroundColor: Colors.purpleAccent),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              playAudio(2);
            },
            child: const Text(
              "2",
              style: TextStyle(fontSize: 22,color: Colors.white),
            ),
            style: TextButton.styleFrom(backgroundColor: Colors.indigoAccent),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              playAudio(3);
            },
            child: const Text(
              "3",
              style: TextStyle(fontSize: 22,color: Colors.white),
            ),
            style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              playAudio(4);
            },
            child: const Text(
              "4",
              style: TextStyle(fontSize: 22,color: Colors.white),
            ),
            style: TextButton.styleFrom(backgroundColor: Colors.greenAccent),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              playAudio(5);
            },
            child: const Text(
              "5",
              style: TextStyle(fontSize: 22,color: Colors.white),
            ),
            style: TextButton.styleFrom(backgroundColor: Colors.amberAccent),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              playAudio(6);
            },
            child: const Text(
              "6",
              style: TextStyle(fontSize: 22,color: Colors.white),
            ),
            style: TextButton.styleFrom(backgroundColor: Colors.orangeAccent,
          ),
        ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              playAudio(7);
            },
            child: const Text(
              "7",
              style: TextStyle(fontSize: 22,color: Colors.white),
            ),
            style: TextButton.styleFrom(backgroundColor: Colors.redAccent),
          ),
        ),
      ],
    ));
  }
}
