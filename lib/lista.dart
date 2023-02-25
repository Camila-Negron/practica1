import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  static final List<Map<String, dynamic>> tareas=[
    {
      "nombre":"tarea uno",
      "descripcion":"descripc tarea uno",
      "estado":"pendiente"
    },
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: ListView(
        children: _crearItem()
      ),
    ); 
  }
  
  List<Widget>_crearItem() {
    List<Widget> temporal=[];
    for(Map<String, dynamic>tarea in tareas){
      Widget item=ListTile(
        title: Text("${tarea["nombre"]}"),
      );
    temporal.add(item);
    }
    return temporal;
  }

  }