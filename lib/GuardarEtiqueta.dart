import 'package:flutter/material.dart';

class GuardarEtiqueta extends StatefulWidget {
  static final nombrePagina = "guardar_etiqueta";

  @override
  _GuardarEtiquetaState createState() => _GuardarEtiquetaState();
}

class _GuardarEtiquetaState extends State<GuardarEtiqueta> {
  bool _mostrarCampoTexto = false;
  TextEditingController _etiquetaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
            if (_mostrarCampoTexto)
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
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _mostrarCampoTexto = true;
                      });
                    },
                    child: Text('Nuevo'),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción para el botón "Guardar"
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
