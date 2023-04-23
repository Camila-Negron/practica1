import 'package:flutter/material.dart';
import 'package:practica1/login.dart';
import 'package:practica1/lista.dart';
import 'package:practica1/formulario.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "tareas",
      initialRoute: LoginScreen.nombrePagina,
      routes: {
        LoginScreen.nombrePagina: (BuildContext context) => LoginScreen(),
        ListaT.nombrePagina: (BuildContext context) => ListaT(),
        TodoFormScreen.nombrePagina: (BuildContext context) => TodoFormScreen(),
      },
    );
  }
}
