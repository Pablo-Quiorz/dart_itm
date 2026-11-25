// Librería separada: en Dart el encapsulamiento con '_' es a nivel de librería/archivo.

class CuentaBancaria {
  final String titular;
  double _saldo;

  CuentaBancaria(this.titular, double saldoInicial)
      : _saldo = saldoInicial >= 0 ? saldoInicial : 0;

  double get saldo => _saldo;

  set saldo(double nuevoSaldo) {
    if (nuevoSaldo < 0) {
      throw ArgumentError('El saldo no puede ser negativo.');
    }
    _saldo = nuevoSaldo;
  }

  void depositar(double monto) {
    if (monto <= 0) {
      throw ArgumentError('El depósito debe ser mayor a cero.');
    }
    _saldo += monto;
  }

  bool retirar(double monto) {
    if (monto <= 0 || monto > _saldo) {
      return false;
    }
    _saldo -= monto;
    return true;
  }
}
