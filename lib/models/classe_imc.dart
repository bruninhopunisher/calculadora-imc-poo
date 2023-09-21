import 'package:desafio_calculadora_imc/models/pessoa.dart';

class CalculadoraIMC {
  double imcCalculator(Pessoa pessoa) {
    return (pessoa.getPeso() / (pessoa.getAltura() * pessoa.getAltura()));
  }
}