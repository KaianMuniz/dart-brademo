import 'package:flutter/material.dart';

class Ex4 extends StatelessWidget {
  const Ex4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insert Image Example'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [

          const SizedBox(height: 50), 

          
          SizedBox(
            width: 300,
            height: 150,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.network(
                'assets/images/cavalo.png',
              ),
            ),
          ),

          const SizedBox(height: 100), 

          
          SizedBox(
            width: double.infinity,
            height: 250,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.network(
                'assets/images/gato.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}