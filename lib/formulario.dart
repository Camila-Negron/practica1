import 'package:flutter/material.dart';
import 'package:flutter/src/painting/alignment.dart';

class Formulario extends StatefulWidget {
  static final nombrePagina = "formulario";
  @override
  _FormularioState createState() => _FormularioState();
}

const List<String> list = <String>['Trabajo', 'Casa', 'Personal'];

class _FormularioState extends State<Formulario> {
  //final idForm = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final dateController = TextEditingController();

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
          //key: idForm,
          child: Column(
            children: <Widget>[
              _crearNombreTarea(),
              _crearFecha(),
              _crearDropDown(context),
              _crearBotones(context),
            ],
          ),
        ),
      ),
    );
  }

  _crearNombreTarea() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Nombre de la tarea',
      ),
      controller: nameController,
    );
    SizedBox(height: 16.0);
  }

  _crearFecha() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Fecha de cumplimiento',
      ),
      controller: dateController,
    );
    SizedBox(height: 16.0);
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

  _crearBotones(BuildContext context) {
    return Row(
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
              String newTaskName = nameController.text;
              String newTaskDate = dateController.text;
              Navigator.pop(context, '$newTaskName - $newTaskDate');
            },
            child: Text('Guardar'),
          ),
        ),
      ],
    );
  }
}
