import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practica1/todo_cubit.dart';
import 'package:practica1/todo_state.dart';
import 'package:practica1/formulario.dart';
import 'package:practica1/GuardarEtiqueta.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
      ),
      body: BlocBuilder<TodoCubit, TodoState>(
        builder: (context, state) {
          if (state is LoadingTodoState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is LoadedTodoState) {
            return ListView.builder(
              itemCount: state.tasks.length,
              itemBuilder: (BuildContext context, int index) {
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
              List<String> taskAndDate = value.split(' - ');
              String task = taskAndDate[0];
              String taskDate = taskAndDate[1];
              context.read<TodoCubit>().saveTask(task, taskDate);
            }
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
