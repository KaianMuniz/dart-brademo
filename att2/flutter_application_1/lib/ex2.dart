import 'package:flutter/material.dart';

class Ex2 extends StatelessWidget {
  const Ex2({super.key});

  Widget buildButton(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.purple),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(color: Colors.purple)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ex2')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildButton(Icons.call, 'CALL'),
            buildButton(Icons.near_me, 'ROUTE'),
            buildButton(Icons.share, 'SHARE'),
          ],
        ),
      ),
    );
  }
}