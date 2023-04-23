import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practica1/todo_cubit.dart';
import 'package:practica1/todo_state.dart';
import 'package:practica1/formulario.dart';

class ListaT extends StatelessWidget {
  static final nombrePagina = "listado";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do App',
      home: BlocProvider(
        create: (context) => TodoCubit(),
        child: ToDoList(),
      ),
    );
  }
}

class ToDoList extends StatelessWidget {
  final TextEditingController _taskController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
      ),
      body: BlocBuilder<TodoCubit, TodoState>(
        builder: (context, state) {
          if (state is TodoState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: state.tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.tasks[index]),
                  subtitle: Text(state.taskDates[index]),
                );
              },
            );
          }
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
