// Video Dart_01 (De C# a Dart): Clases, constructores y herencia con extends y super.

class Persona {
  String nombre;
  int edad;

  // Constructor simplificado propio de Dart (equivale a asignar this.x = x en C#)
  Persona(this.nombre, this.edad);

  // Constructor nombrado
  Persona.invitado()
      : nombre = 'Invitado',
        edad = 18;

  void presentarse() {
    print('Hola, soy $nombre y tengo $edad años.');
  }
}

class Estudiante extends Persona {
  String carrera;

  // Uso de super.parametro (sintaxis moderna en Dart 3)
  Estudiante(super.nombre, super.edad, this.carrera);

  void estudiar() {
    print('$nombre está estudiando $carrera.');
  }
}

void main() {
  final invitado = Persona.invitado();
  invitado.presentarse();

  final estudiante = Estudiante('Pablo Quiroz', 22, 'Desarrollo de Software');
  estudiante.presentarse();
  estudiante.estudiar();
}
