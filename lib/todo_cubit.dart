import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:practica1/todo_state.dart';
import 'package:http/http.dart' as http;

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

  Future<bool> comprobarUsuario(String usuario, String password) async {
    final nuevaLista = state.toList();
    final url = Uri.parse('http://localhost:9999/api/v1/auth/login');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: '{"username": "${usuario}", "password": "${password}"}',
    );
    print('Código de respuesta: ${response.statusCode}');
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
