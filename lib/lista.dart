import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practica1/todo_cubit.dart';
import 'package:practica1/todo_state.dart';
import 'package:practica1/formulario.dart';
import 'package:practica1/GuardarEtiqueta.dart';

class ListaT extends StatefulWidget {
  static final nombrePagina = "listado";

  @override
  State<StatefulWidget> createState() => ListaTareasState();
}

class ListaTareasState extends State<ListaT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
      ),
      body: BlocBuilder<TodoCubit, List<TodoState>>(
        builder: (context, state) => Center(
          child: ListView.builder(
            itemCount: state.length,
            itemBuilder: (context, index) {
              final todoState = state[index];
              return ListTile(
                title: Text(todoState.nombre),
                subtitle: Text(todoState.fecha),
                trailing: Text(todoState.etiqueta),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TodoFormScreen(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
