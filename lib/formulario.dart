import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  Formulario({Key? key}):super(key: key);
  _FormularioState createState() => _FormularioState();
  static final nombrePagina = "formulario";
}


class _FormularioState extends State<Formulario> {
   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario"),
      ),
      body: Form(
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                hintText: "nombre de la tarea"
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top:20.0
              ),
              child: TextFormField(
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "fecha de cumplimiento"
                ),
              ),
            ),
            
          
        )
          
      ),
    );
   }
}