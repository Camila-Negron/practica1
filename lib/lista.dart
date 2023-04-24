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

  void _saveTask(BuildContext context) {
    String task = _taskController.text;
    String taskDate = _dateController.text;
    context.read<TodoCubit>().saveTask(task, taskDate);
    Navigator.pop(context, '$task - $taskDate');
  }

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
          } else if (state is TodoState) {
            return ListView.builder(
              itemCount: state.tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.tasks[index]),
                  subtitle: Text(state.taskDates[index]),
                );
              },
            );
          } else {
            return Container();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TodoFormScreen()),
          ).then((value) {
            if (value != null) {
              _taskController.text = value.split(' - ')[0];
              _dateController.text = value.split(' - ')[1];
              _saveTask(context);
            }
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
