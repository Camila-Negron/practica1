import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practica1/login.dart';
import 'package:practica1/lista.dart';
import 'package:practica1/formulario.dart';
import 'package:practica1/todo_cubit.dart';
import 'package:provider/provider.dart';

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
              TodoCubit(),
        ),
        //Provider<ListaTareasCubit>(
        //create: (context) => ListaTareasCubit([]),
        //)
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




// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "tareas",
//       home: BlocProvider(
//         create: (context) => TodoCubit(),
//         child: ListaT(),
//       ),
//       initialRoute: LoginScreen.nombrePagina,
//       routes: {
//         LoginScreen.nombrePagina: (BuildContext context) => LoginScreen(),
//         //ListaT.nombrePagina: (BuildContext context) => ListaT(),
//         TodoFormScreen.nombrePagina: (context) => BlocProvider(
//               create: (context) => TodoCubit(),
//               child: TodoFormScreen(),
//             ),
//         //TodoFormScreen.nombrePagina: (BuildContext context) => TodoFormScreen(),
//       },
//     );
//   }
// }
