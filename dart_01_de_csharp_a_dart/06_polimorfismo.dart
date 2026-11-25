// Video Dart_01 (De C# a Dart): Polimorfismo mediante @override.

class Notificacion {
  final String destinatario;

  Notificacion(this.destinatario);

  void enviar(String mensaje) {
    print('Enviando notificación genérica a $destinatario: $mensaje');
  }
}

class NotificacionCorreo extends Notificacion {
  NotificacionCorreo(super.destinatario);

  @override
  void enviar(String mensaje) {
    print('[EMAIL] Para: $destinatario -> Asunto: "$mensaje"');
  }
}

class NotificacionPush extends Notificacion {
  NotificacionPush(super.destinatario);

  @override
  void enviar(String mensaje) {
    print('[PUSH] Al dispositivo de $destinatario -> "$mensaje"');
  }
}

void main() {
  // Lista polimórfica de tipo base Notificacion
  final List<Notificacion> cola = [
    NotificacionCorreo('paqg06@gmail.com'),
    NotificacionPush('Pablo Quiroz'),
  ];

  for (final notificacion in cola) {
    notificacion.enviar('Tu entrega de Dart y Flutter está lista.');
  }
}
