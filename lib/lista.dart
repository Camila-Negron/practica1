import 'package:flutter/material.dart';

class ListaT extends StatelessWidget {
  const ListaT({Key? key}) : super(key: key);
  static final nombrePagina = "listado";
  //@override
  //_ListaState createState() => _ListanState();

  static final List<Map<String, dynamic>> tareas = [
    {
      "nombre": "tarea uno",
      "descripcion": "descripc tarea uno",
      "estado": false
    },
    {
      "nombre": "tarea dos",
      "descripcion": "descripc tarea dos",
      "estado": true
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: /*(List<Map<String, dynamic>>?ListView())*/
          ListView(children: _crearItem()),
      /*:
      Center(
        child: Text("No tienes tareas registradas"),
      ),*/
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.add),
      ),
    );
  }

  List<Widget> _crearItem() {
    List<Widget> temporal = [];
    for (Map<String, dynamic> tarea in tareas) {
      Widget item = ListTile(
        title: Text("${tarea["nombre"]}"),
      );
      temporal.add(item);
    }
    return temporal;
  }
}
