// Video Dart_01 (De C# a Dart): Bucles for, for-in, while y do-while.

void main() {
  // Bucle for clásico (idéntico a C#)
  print('--- Tabla del 3 con for ---');
  for (int i = 1; i <= 5; i++) {
    print('3 x $i = ${3 * i}');
  }

  // Bucle for-in (equivalente a foreach en C#)
  print('--- Recorrido con for-in ---');
  List<String> lenguajes = ['C#', 'Dart', 'Flutter'];
  for (final lenguaje in lenguajes) {
    print('Tecnología: $lenguaje');
  }

  // Bucle while
  print('--- Conteo regresivo con while ---');
  int contador = 3;
  while (contador > 0) {
    print('Faltan $contador...');
    contador--;
  }

  // Bucle do-while
  print('--- Validación con do-while ---');
  int intento = 1;
  do {
    print('Ejecutando intento #$intento');
    intento++;
  } while (intento <= 2);
}
