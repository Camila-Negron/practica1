import 'package:flutter/material.dart';
//import 'tarea.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFBE9E7),
                  Color(0xFFBF360C),
                ],
                stops: [0.1, 0.4, 0.7, 0.9],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
