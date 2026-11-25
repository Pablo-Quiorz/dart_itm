// Video Dart_01 (De C# a Dart): Funciones, parámetros nombrados, opcionales y arrow functions.

// Función tradicional con retorno explícito
int sumar(int a, int b) {
  return a + b;
}

// Función flecha (arrow function) para expresiones cortas
int multiplicar(int a, int b) => a * b;

// Parámetros nombrados con required y valores por defecto (muy usado en Flutter)
String crearMensaje({
  required String usuario,
  String saludo = 'Hola',
  bool enMayusculas = false,
}) {
  final texto = '$saludo, $usuario';
  return enMayusculas ? texto.toUpperCase() : texto;
}

void main() {
  print('Suma: ${sumar(7, 5)}');
  print('Multiplicación: ${multiplicar(4, 6)}');
  print(crearMensaje(usuario: 'Pablo'));
  print(crearMensaje(usuario: 'Pablo', saludo: 'Bienvenido', enMayusculas: true));
}
