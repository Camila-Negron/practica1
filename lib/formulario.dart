import 'package:flutter/material.dart';
import 'package:flutter/src/painting/alignment.dart';

class Formulario extends StatefulWidget {
  Formulario({Key? key}) : super(key: key);
  _FormularioState createState() => _FormularioState();
  static final nombrePagina = "formulario";
}

const List<String> list = <String>['Trabajo', 'Casa', 'Personal'];

class _FormularioState extends State<Formulario> {
  final idForm = GlobalKey<FormState>();

  Map<String, dynamic> nuevaTarea = {};

  String dropdownValue = list.first;

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
              _crearDropDown(context),
              _crearBotonGuardar(context),
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

  _crearDropDown(BuildContext context) {
    return DropdownButton<String>(
      //margin: EdgeInsets.only(top: 20.0),
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
      underline: Container(
        alignment: Alignment.centerLeft,
        height: 2,
        color: Color.fromARGB(255, 87, 87, 88),
      ),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  _crearBotonGuardar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: ElevatedButton(
        onPressed: () {
          idForm.currentState!.save();
          nuevaTarea["estado"] = false;

          Navigator.pop(context);
        },
        child: Text('Guardar'),
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 157, 62, 33),
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
          primary: Color.fromARGB(255, 157, 62, 33),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
