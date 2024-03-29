import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practica1/login.dart';
import 'package:practica1/lista.dart';
import 'package:practica1/formulario.dart';
import 'package:practica1/todo_cubit.dart';
import 'package:provider/provider.dart';

import 'package:practica1/drop_cubit.dart';
import 'package:practica1/GuardarEtiqueta.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<TodoCubit>(
          create: (context) =>
              //ComboBoxCubit(['Trabajo', 'Universidad', 'Casa']),
              TodoCubit([]),
        ),
        Provider<TodoFormCubit>(
          create: (context) => TodoFormCubit([]),
        )
      ],
      child: MaterialApp(
        title: 'Practica 1.2',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen(),
      ),
    );
  }
}
