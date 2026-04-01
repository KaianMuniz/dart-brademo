import 'package:flutter/material.dart';
import 'exercicio1.dart';  
import 'exercicio2.dart';  
import 'exercicio3/screens/login_screen.dart';  
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercícios Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(), );
  }
}