import 'dart:io';
import 'package:desafio_calculadora_imc/console/console_utils.dart';
import 'package:desafio_calculadora_imc/models/classe_imc.dart';
import 'package:desafio_calculadora_imc/models/pessoa.dart';

void execute() {
  stdout.write("\nBem vindo a calculadora de IMC\n");

  String inputNome = ConsoleUtils.lerStringComTexto("Digite seu nome: ");
  var inputPeso = ConsoleUtils.lerDoubleComTexto("Digite seu peso: ");
  var inputAltura = ConsoleUtils.lerDoubleComTexto("Digite sua altura em metros, ex: 1.80: ");

  var pessoaClass = Pessoa();
  pessoaClass.setNome(inputNome);
  pessoaClass.setPeso(inputPeso);
  pessoaClass.setAltura(inputAltura);

  var imc = CalculadoraIMC().imcCalculator(pessoaClass);
  var nomePrint = pessoaClass.getNome();

  switch (imc) {
    case <= 18.5:
      stdout.write('$nomePrint, você está abaixo do peso');
      break;
    case >= 18.6 && <= 24.9:
      stdout.write("$nomePrint, você está no peso ideal (parabéns)");
      break;
    case >= 25.0 && <= 29.9:
      stdout.write("$nomePrint, você está levemente acima do peso");
      break;
    case >= 30.0 && <= 34.9:
      stdout.write("$nomePrint, você está com obesidade grau I ");
      break;
    case >= 35.0 && <= 39.9:
      stdout.write("$nomePrint, você está com obesidade grau II (severa)");
      break;
    case >= 40.0:
      stdout.write("$nomePrint, você está com besidade grau III (mórbida)");
      break;
    default:
      print("Error");
      break;
  }
}
