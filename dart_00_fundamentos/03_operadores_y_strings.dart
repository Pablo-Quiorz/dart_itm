// Video Dart_00: Operadores aritméticos, relacionales e interpolación de cadenas.

void main() {
  int a = 15;
  int b = 4;

  // Operadores aritméticos (incluyendo división entera ~/)
  print('Suma: ${a + b}');
  print('División decimal: ${a / b}');
  print('División entera: ${a ~/ b}');
  print('Residuo (módulo): ${a % b}');

  // Operador ternario y relacional
  String paridad = (a % 2 == 0) ? 'par' : 'impar';
  print('El número $a es $paridad.');

  // Cadenas multilínea e interpolación de expresiones
  String resumen = '''
Resumen de operación:
- Valor A: $a
- Valor B: $b
- Producto: ${a * b}
''';
  print(resumen);
}
