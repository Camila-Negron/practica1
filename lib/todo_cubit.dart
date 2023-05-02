import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:practica1/todo_state.dart';

class ListaTareasState {
  final List<String> values;

  ListaTareasState(this.values);

  ListaTareasState copyWith({List<String>? values}) {
    return ListaTareasState(values ?? this.values);
  }
}

class TodoCubit extends Cubit<List<TodoState>>
    implements StateStreamable<List<TodoState>> {
  TodoCubit(List<TodoState> list) : super([]);

  void add(TodoState todo) {
    emit([...state, todo]);
  }
}
