// Video Dart_01 (De C# a Dart): Estructuras condicionales if-else y switch.

void main() {
  double nota = 4.1;

  if (nota >= 4.5) {
    print('Desempeño excelente');
  } else if (nota >= 3.0) {
    print('Asignatura aprobada');
  } else {
    print('Asignatura reprobada');
  }

  // Equivalente al switch de C#, usando switch expression moderno en Dart
  String dia = 'Lunes';
  String actividad = switch (dia) {
    'Lunes' || 'Miércoles' => 'Clase de Dart y Flutter',
    'Viernes' => 'Taller práctico en laboratorio',
    'Sábado' || 'Domingo' => 'Repaso autónomo',
    _ => 'Día de estudio general',
  };

  print('$dia: $actividad');
}
