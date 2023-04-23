import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practica1/todo_cubit.dart';
import 'package:practica1/formulario.dart';

class ListaT extends StatelessWidget {
  static final nombrePagina = "listado";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do App',
      home: BlocProvider<TodoCubit>(
        create: (BuildContext context) => TodoCubit(),
        child: ToDoList(),
      ),
    );
  }
}

class ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
      ),
      body: BlocBuilder<TodoCubit, TodoState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.tasks.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.tasks[index]),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TodoFormScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
