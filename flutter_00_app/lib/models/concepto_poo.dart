// Modelo POO utilizado por la interfaz Flutter para representar cada tema estudiado.

class ConceptoPOO {
  final String titulo;
  final String modulo;
  final String descripcion;
  bool completado;

  ConceptoPOO({
    required this.titulo,
    required this.modulo,
    required this.descripcion,
    this.completado = false,
  });

  void alternarEstado() {
    completado = !completado;
  }
}
