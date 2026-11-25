// Video Dart_01 (De C# a Dart): Manejo de excepciones con try, on, catch y finally.

double dividir(int dividendo, int divisor) {
  if (divisor == 0) {
    throw ArgumentError('El divisor no puede ser cero.');
  }
  return dividendo / divisor;
}

void main() {
  try {
    print('Resultado válido: ${dividir(10, 2)}');
    print('Resultado inválido: ${dividir(10, 0)}');
  } on ArgumentError catch (e) {
    print('Error controlado de argumento: ${e.message}');
  } catch (e, stackTrace) {
    print('Error inesperado: $e\n$stackTrace');
  } finally {
    print('Bloque finally ejecutado: limpieza de recursos finalizada.');
  }
}
