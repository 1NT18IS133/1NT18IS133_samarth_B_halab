import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WithScoffoldAndSafearea(),
    );
  }
}

class WithoutSafearea extends StatelessWidget {
  const WithoutSafearea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Without Safe Area",
      style: TextStyle(fontSize: 40, color: Colors.redAccent),
    );
  }
}

class WithSafearea extends StatelessWidget {
  const WithSafearea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Text(
        "With Safe Area",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 40, color: Colors.purpleAccent),
      ),
    );
  }
}

class WithScaffold extends StatelessWidget {
  const WithScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold App"),
      ),
      body: const Center(
        child: Text(
          "Only Scaffold",
          style: TextStyle(fontSize: 40, color: Colors.green),
        ),
      ),
    );
  }
}

class WithScoffoldAndSafearea extends StatelessWidget {
  const WithScoffoldAndSafearea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold APP"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const Center(
                  child: Text(
                    "Child 1",
                    textAlign: TextAlign.center,
                  ),
                ),
                height: 100,
                width: 100,
                color: Colors.amberAccent,
              ),
              Container(
                child: const Center(
                  child: Text(
                    "Child 2",
                    textAlign: TextAlign.center,
                  ),
                ),
                height: 100,
                width: 100,
                color: Colors.redAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
