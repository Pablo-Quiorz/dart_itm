// Video Dart_02: Ejercicio integrador de POO (herencia, abstracción, polimorfismo y mixins).

abstract class MiembroAcademico {
  final String nombre;
  final String identificacion;

  MiembroAcademico(this.nombre, this.identificacion);

  String obtenerRol();

  void mostrarFicha() {
    print('[${obtenerRol()}] $nombre (ID: $identificacion)');
  }
}

mixin Evaluable {
  final List<double> _calificaciones = [];

  void agregarNota(double nota) {
    if (nota < 0 || nota > 5.0) {
      throw RangeError('La nota debe estar entre 0.0 y 5.0');
    }
    _calificaciones.add(nota);
  }

  double calcularPromedio() {
    if (_calificaciones.isEmpty) return 0.0;
    return _calificaciones.reduce((a, b) => a + b) / _calificaciones.length;
  }
}

class EstudianteITM extends MiembroAcademico with Evaluable {
  final String programa;

  EstudianteITM(super.nombre, super.identificacion, this.programa);

  @override
  String obtenerRol() => 'Estudiante de $programa';
}

class DocenteITM extends MiembroAcademico {
  final String asignatura;

  DocenteITM(super.nombre, super.identificacion, this.asignatura);

  @override
  String obtenerRol() => 'Docente de $asignatura';
}

void main() {
  final docente = DocenteITM('Carlos Pérez', 'DOC-102', 'Flutter y Dart');
  final estudiante = EstudianteITM('Pablo Quiroz', 'EST-2026', 'Desarrollo de Software');

  estudiante.agregarNota(4.5);
  estudiante.agregarNota(4.0);
  estudiante.agregarNota(4.7);

  final List<MiembroAcademico> miembros = [docente, estudiante];
  for (final miembro in miembros) {
    miembro.mostrarFicha();
  }

  print('Promedio de ${estudiante.nombre}: ${estudiante.calcularPromedio().toStringAsFixed(2)}');
}
