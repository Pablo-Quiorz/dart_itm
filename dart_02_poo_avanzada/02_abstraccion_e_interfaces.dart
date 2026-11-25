// Video Dart_02: Clases abstractas e interfaces implícitas con implements.

abstract class Figura {
  String get nombre;
  double calcularArea();

  void mostrarResumen() {
    print('$nombre -> Área: ${calcularArea().toStringAsFixed(2)}');
  }
}

abstract interface class Imprimible {
  String exportarEtiqueta();
}

class Rectangulo extends Figura implements Imprimible {
  final double ancho;
  final double alto;

  Rectangulo(this.ancho, this.alto);

  @override
  String get nombre => 'Rectángulo (${ancho}x$alto)';

  @override
  double calcularArea() => ancho * alto;

  @override
  String exportarEtiqueta() => 'FIGURA: $nombre';
}

class Circulo extends Figura implements Imprimible {
  final double radio;
  static const double pi = 3.14159265;

  Circulo(this.radio);

  @override
  String get nombre => 'Círculo (r=$radio)';

  @override
  double calcularArea() => pi * radio * radio;

  @override
  String exportarEtiqueta() => 'FIGURA: $nombre';
}

void main() {
  final List<Figura> figuras = [Rectangulo(5, 3), Circulo(4)];
  for (final figura in figuras) {
    figura.mostrarResumen();
  }
}
