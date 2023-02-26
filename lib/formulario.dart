import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  Formulario({Key? key}):super(key: key);
  _FormularioState createState() => _FormularioState();
  static final nombrePagina = "formulario";
}


class _FormularioState extends State<Formulario> {
   @override
   Widget build(BuildContext context) {
    return Container(
      child: Text("pagina de formulario"),
    );
   }
}