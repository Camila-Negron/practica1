import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:practica1/todo_form_cubit.dart';

import 'package:practica1/drop_cubit.dart';
import 'package:practica1/state_drop.dart';

class GuardarEtiqueta extends StatelessWidget {
  static final nombrePagina = "guardar_etiqueta";
  final _etiquetaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final TodoFormCubit _cubit = BlocProvider.of<TodoFormCubit>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Etiqueta'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Contenido de la pantalla de Guardar Etiqueta'),
            SizedBox(
              height: 16.0,
            ),
            TextField(
              controller: _etiquetaController,
              decoration: InputDecoration(
                labelText: 'Nueva etiqueta',
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 16.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      String nuevaEtiqueta = _etiquetaController.text;
                      context.read<TodoFormCubit>().addItem(nuevaEtiqueta);
                      // Acción para el botón "Guardar"
                      Navigator.pop(context);
                    },
                    child: Text('Guardar'),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cerrar'),
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
