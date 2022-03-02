import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyDiceApp());
}

class MyDiceApp extends StatelessWidget {
  const MyDiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dice Application"),
        ),
        body: Dice(),
      ),
    );
  }
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int left = 1;
  int right = 1;

  void diceRoll() {
    setState(() {
      left = Random().nextInt(6) + 1;
      right = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  diceRoll();
                },
                style: TextButton.styleFrom(backgroundColor: Colors.amberAccent),
                child: Image.asset("images/dice$left.png"),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  diceRoll();
                },
                style: TextButton.styleFrom(backgroundColor: Colors.redAccent),
                child: Image.asset("images/dice$right.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
