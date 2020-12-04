import 'dart:ffi';
import 'dart:math';

class Calulos {
  Calulos({this.peso, this.altura});

  final int peso;
  final int altura;
  double _imc;

  String getIMC() {
    _imc = peso / pow(altura / 100, 2);
    return _imc.toStringAsFixed(1);
  }

  String getStatus() {
    if (_imc >= 25) {
      return 'SOBREPESO';
    } else if (_imc > 18.5) {
      return 'NORMAL';
    } else {
      return 'DELGADEZ';
    }
  }
}
