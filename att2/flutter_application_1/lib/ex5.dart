import 'package:flutter/material.dart';

class Ex5 extends StatelessWidget {
  const Ex5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Layout Demo'),
      ),
      body: ListView(
        children: [
          imageSection,
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );
  }
}


Widget imageSection = Image.network(
  'assets/images/cavalo.png',
  width: double.infinity,
  height: 240,
  fit: BoxFit.cover,
);

Widget titleSection = Padding(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Cavalo Legal',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Raça não sei',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      Icon(Icons.star, color: Colors.red),
      SizedBox(width: 4),
      Text('41'),
    ],
  ),
);


Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    buildButton(Icons.call, 'CALL'),
    buildButton(Icons.near_me, 'ROUTE'),
    buildButton(Icons.share, 'SHARE'),
  ],
);

Widget buildButton(IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, color: Colors.blue),
      const SizedBox(height: 8),
      Text(
        label,
        style: const TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}


Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Página com um cavalo muito legal para testar o flutter',
    
    softWrap: true,
  ),
);