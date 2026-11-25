// Video Dart_02: Métodos funcionales sobre colecciones (where, map, reduce, any).

void main() {
  final List<Map<String, dynamic>> cursos = [
    {'nombre': 'Dart Básico', 'nota': 4.5, 'completado': true},
    {'nombre': 'POO en Dart', 'nota': 4.2, 'completado': true},
    {'nombre': 'Flutter Intro', 'nota': 2.8, 'completado': false},
    {'nombre': 'Git y GitHub', 'nota': 4.8, 'completado': true},
  ];

  // Filtrar aprobados con where y transformar con map
  final aprobados = cursos
      .where((c) => (c['nota'] as double) >= 3.0)
      .map((c) => '${c['nombre']} (${c['nota']})')
      .toList();

  print('Cursos aprobados: $aprobados');

  // Calcular promedio usando fold
  final sumaNotas = cursos.fold<double>(
    0.0,
    (acumulado, c) => acumulado + (c['nota'] as double),
  );
  final promedio = sumaNotas / cursos.length;
  print('Promedio general: ${promedio.toStringAsFixed(2)}');

  // Verificar si alguno está pendiente
  final hayPendientes = cursos.any((c) => c['completado'] == false);
  print('¿Hay cursos pendientes?: $hayPendientes');
}
