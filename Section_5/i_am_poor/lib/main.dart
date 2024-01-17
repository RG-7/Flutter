import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          title: const Text(
            'I am Poor',
          ),
          backgroundColor: Colors.teal.shade800,
        ),
        body: const Center(
          child: Image(
            image: AssetImage(
              'images/i_m_poor.png',
            ),
          ),
        ),
      ),
    ),
  );
}
