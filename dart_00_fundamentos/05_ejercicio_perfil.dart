// Video Dart_00: Ejercicio integrador de perfil académico usando tipos y colecciones.

void main() {
  const String institucion = 'ITM';
  final String nombreCompleto = 'Pablo Andres Quiroz Giraldo';
  String? apodo;
  List<double> notas = [4.2, 3.8, 4.5];

  double promedio = (notas[0] + notas[1] + notas[2]) / notas.length;
  bool aprobado = promedio >= 3.0;

  print('=== Perfil Académico ($institucion) ===');
  print('Nombre: $nombreCompleto (${apodo ?? "Sin apodo"})');
  print('Notas: $notas');
  print('Promedio: ${promedio.toStringAsFixed(2)}');
  print('Estado: ${aprobado ? "Aprobado" : "Reprobado"}');
}
