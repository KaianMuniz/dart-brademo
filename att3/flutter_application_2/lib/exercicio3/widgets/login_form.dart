import 'package:flutter/material.dart';
import '../models/login.dart';
import '../screens/home_screen.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _usuarioController = TextEditingController();
  final _senhaController = TextEditingController();

  void _fazerLogin() {
    final login = Login(
      usuario: _usuarioController.text,
      senha: _senhaController.text,
    );

    if (login.isValid()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Usuário ou senha inválidos!'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: _usuarioController,
          decoration: InputDecoration(labelText: 'Email'),
        ),
        SizedBox(height: 10),
        TextField(
          controller: _senhaController,
          obscureText: true,
          decoration: InputDecoration(labelText: 'Password'),
        ),
        SizedBox(height: 8),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: Text('Forgot Password?'),
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: _fazerLogin,
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 45),
          ),
          child: Text('Login'),
        ),
        SizedBox(height: 16),
        TextButton(
          onPressed: () {},
          child: Text('New User? Create Account'),
        ),
      ],
    );
  }
}