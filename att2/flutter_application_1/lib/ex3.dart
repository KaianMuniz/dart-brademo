import 'package:flutter/material.dart';

class Ex3 extends StatelessWidget {
  const Ex3({super.key});

  Widget buildBox(Color color, String text) {
    return Container(
      width: 200, 
      height: 200,
      color: color,
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(8),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack & Positioned Widget'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: buildBox(Colors.green, 'Green'),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: buildBox(Colors.red, 'Red'),
            ),
            Positioned(
              top: 40,
              left: 40,
              child: buildBox(Colors.purple, 'Purple'),
            ),
          ],
        ),
      ),
    );
  }
}