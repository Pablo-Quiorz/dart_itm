// Video Dart_00: Colecciones básicas (List, Set y Map).

void main() {
  // List: colección ordenada que permite duplicados
  List<String> temas = ['Variables', 'Null Safety', 'Operadores'];
  temas.add('Colecciones');
  print('Temas vistos: $temas (Total: ${temas.length})');

  // Set: colección sin elementos duplicados
  Set<String> herramientas = {'Dart SDK', 'Git', 'VS Code', 'Git'};
  print('Herramientas únicas: $herramientas');

  // Map: estructura clave-valor
  Map<String, dynamic> estudiante = {
    'nombre': 'Pablo Quiroz',
    'programa': 'Ingeniería',
    'creditos': 18,
  };

  print('Estudiante: ${estudiante['nombre']} - Créditos: ${estudiante['creditos']}');
}
