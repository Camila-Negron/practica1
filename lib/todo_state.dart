class TodoState {
  String _nombre, _fecha, _etiqueta;

  TodoState(this._nombre, this._fecha, this._etiqueta);

  String get nombre => _nombre;
  String get fecha => _fecha;
  String get etiqueta => _etiqueta;

  set nombre(String nuevoNombre) {
    if (nuevoNombre.length <= 255) {
      this._nombre = nuevoNombre;
    }
  }

  set fecha(String nuevaFecha) {
    if (nuevaFecha.length <= 255) {
      this._fecha = nuevaFecha;
    }
  }

  set etiqueta(String nuevaEtiqueta) {
    if (nuevaEtiqueta.length <= 255) {
      this._etiqueta = nuevaEtiqueta;
    }
  }
}
