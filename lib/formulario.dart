import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practica1/todo_cubit.dart';
import 'package:practica1/todo_state.dart';
import 'package:practica1/drop_cubit.dart';
import 'package:practica1/state_drop.dart';
import 'package:practica1/GuardarEtiqueta.dart';

class TodoFormScreen extends StatelessWidget {
  static final nombrePagina = "formulario";
  final TextEditingController _taskController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final todoFormCubit = context.watch<TodoFormCubit>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Tarea'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _taskController,
              decoration: InputDecoration(
                labelText: 'Nombre de la tarea',
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            TextField(
              controller: _dateController,
              decoration: InputDecoration(
                labelText: 'Fecha de cumplimiento',
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: DropdownButton<String>(
                    value: todoFormCubit.state.selectedDropdownItem,
                    onChanged: (newValue) {
                      todoFormCubit.updateSelectedDropdownItem(newValue!);
                    },
                    items: todoFormCubit.state.dropdownItems
                        .map((item) => DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            ))
                        .toList(),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'guardar_etiqueta');
                    },
                    child: Text('Editar'),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancelar'),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      String task = _taskController.text;
                      String taskDate = _dateController.text;
                      context.read<TodoCubit>().saveTask(task, taskDate);
                      Navigator.pop(context, '$task - $taskDate');
                    },
                    child: Text('Guardar'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
