// Video Dart_02: Encapsulamiento con atributos privados (_), getters y setters.

import 'cuenta_bancaria.dart';

void main() {
  final cuenta = CuentaBancaria('Pablo Quiroz', 100000);
  print('Titular: ${cuenta.titular} | Saldo inicial: \$${cuenta.saldo}');

  cuenta.depositar(50000);
  print('Después de depositar: \$${cuenta.saldo}');

  final retiroExitoso = cuenta.retirar(30000);
  print('¿Retiro exitoso?: $retiroExitoso | Saldo actual: \$${cuenta.saldo}');

  try {
    cuenta.saldo = -500;
  } on ArgumentError catch (e) {
    print('Validación del setter capturada: ${e.message}');
  }
}
