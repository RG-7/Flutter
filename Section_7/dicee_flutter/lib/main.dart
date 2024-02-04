import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text(
            'Dicee',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceeNumber = 1;
  var rightDiceeNumber = 6;

  void press() {
    setState(
      () {
        leftDiceeNumber = Random().nextInt(6) + 1;
        rightDiceeNumber = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            onPressed: () {
              press();
            },
            child: Image.asset(
              'images/dice$leftDiceeNumber.png',
            ),
          )),
          Expanded(
            child: TextButton(
              onPressed: () {
                press();
              },
              child: Image.asset(
                'images/dice$rightDiceeNumber.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
