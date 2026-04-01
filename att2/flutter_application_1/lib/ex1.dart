import 'package:flutter/material.dart';

class Ex1 extends StatelessWidget {
  const Ex1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter is Fun!'),
        backgroundColor: Colors.green,
      ),
      body: Align(
        alignment: Alignment.topLeft, 
        child: Padding(
          padding: const EdgeInsets.only(
            top: 100,
            left: 70,
          ),
          child: Container(
            width: 120,
            height: 120,
            color: Colors.red,
            alignment: Alignment.center,
            child: const Text('Hi Mom 👋'),
          ),
        ),
      ),
    );
  }
}