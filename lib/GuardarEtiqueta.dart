import 'package:flutter/material.dart';

class GuardarEtiqueta extends StatelessWidget {
  static final nombrePagina = "guardar_etiqueta";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Etiqueta'),
      ),
      body: Center(
        child: Text('Contenido de la pantalla de Guardar Etiqueta'),
      ),
    );
  }
}
