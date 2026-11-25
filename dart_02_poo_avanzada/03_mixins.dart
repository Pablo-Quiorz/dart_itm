// Video Dart_02: Mixins para reutilización horizontal de comportamiento sin herencia múltiple.

mixin Registrable {
  void registrarEvento(String evento) {
    final hora = DateTime.now().toIso8601String();
    print('[$hora] LOG: $evento');
  }
}

mixin ExportableJson {
  Map<String, dynamic> aMapa();

  String aJsonSimple() => aMapa().toString();
}

class UsuarioSistema with Registrable, ExportableJson {
  final String usuario;
  final String rol;

  UsuarioSistema(this.usuario, this.rol);

  @override
  Map<String, dynamic> aMapa() => {'usuario': usuario, 'rol': rol};
}

void main() {
  final admin = UsuarioSistema('pquiroz', 'Estudiante');
  admin.registrarEvento('Inicio de sesión en práctica de Dart');
  print('Serialización: ${admin.aJsonSimple()}');
}
