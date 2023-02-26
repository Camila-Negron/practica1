import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  Formulario({Key? key}) : super(key: key);
  _FormularioState createState() => _FormularioState();
  static final nombrePagina = "formulario";
}

class _FormularioState extends State<Formulario> {
  final idForm = GlobalKey<FormState>();

  Map<String, dynamic> nuevaTarea = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          key: idForm,
          child: Column(
            children: <Widget>[
              _crearNombreTarea(),
              _crearFecha(),
              _crearBotonGuardar(),
              _crearBotonCancelar()
            ],
          ),
        ),
      ),
    );
  }

  _crearNombreTarea() {
    return TextFormField(
      onSaved: (valor) {
        nuevaTarea["nombre"] = valor;
      },
      decoration: InputDecoration(hintText: "nombre de la tarea"),
    );
  }

  _crearFecha() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: TextFormField(
        onSaved: (valor) {
          nuevaTarea["fecha"] = valor;
        },
        maxLines: null,
        decoration: InputDecoration(hintText: "fecha de cumplimiento"),
      ),
    );
  }

  _crearBotonGuardar() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: ElevatedButton(
        onPressed: () {
          idForm.currentState!.save();
        },
        child: Text('Guardar'),
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 139, 33, 157),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }

  _crearBotonCancelar() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: ElevatedButton(
        onPressed: () => {},
        child: Text('Cancelar'),
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 139, 33, 157),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
