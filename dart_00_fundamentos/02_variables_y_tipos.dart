// Video Dart_00: Variables, tipos de datos, final/const y Null Safety.

void main() {
  // Tipos explícitos e inferencia con var
  int semestre = 4;
  double promedio = 4.35;
  String curso = 'Desarrollo Móvil con Flutter';
  bool estaActivo = true;
  var lenguaje = 'Dart';

  // Inmutabilidad: final (en tiempo de ejecución) vs const (en tiempo de compilación)
  final DateTime fechaActual = DateTime.now();
  const double notaMinimaAprobacion = 3.0;

  // Null Safety: tipo nullable (?) y operador de respaldo (??)
  String? segundoNombre;
  String nombreMostrado = segundoNombre ?? 'Sin segundo nombre';

  print('Curso: $curso ($lenguaje)');
  print('Semestre: $semestre | Promedio: $promedio | Activo: $estaActivo');
  print('Nota mínima: $notaMinimaAprobacion | Fecha: $fechaActual');
  print('Segundo nombre: $nombreMostrado');
}
