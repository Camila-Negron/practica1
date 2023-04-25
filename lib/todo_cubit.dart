import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:practica1/todo_state.dart';


class TodoCubit extends Cubit<TodoState> {
  // Lista privada de tareas y fechas de tareas
  List<String> _tasks = [];
  List<String> _taskDates = [];

  // El estado inicial es LoadingTodoState
  TodoCubit() : super(LoadingTodoState());

  Future<void> saveTask(String task, String taskDate) async {
    try {
      // Simulamos guardar la tarea en una base de datos o red
      await Future.delayed(Duration(seconds: 1));

      // Agregamos la tarea a la lista de tareas y fechas de tareas
      _tasks.add(task);
      _taskDates.add(taskDate);

      // Emitimos un estado LoadedTodoState con las nuevas listas de tareas y fechas de tareas
      emit(LoadedTodoState(_tasks, _taskDates));
    } catch (e) {
      // Si ocurre un error, emitimos un estado ErrorTodoState
      emit(ErrorTodoState());
    }
  }
}
