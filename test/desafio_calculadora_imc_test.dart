import 'package:desafio_calculadora_imc/models/pessoa.dart';
import 'package:test/test.dart';

void main() {
  // group('CalculadoraIMC', () {
  //   test('Deve retornar o IMC de uma pessoa', () {
  //     var pessoa = Pessoa();
  //     pessoa.setPeso(80);
  //     pessoa.setAltura(1.80);
  //
  //     var calculadoraIMC = CalculadoraIMC();
  //     var imc = calculadoraIMC.imcCalculator(pessoa);
  //
  //     expect(imc, 24.691358024691358);
  //   });
  // });

    test('Deve retornar o nome de uma pessoa', () {
      var pessoa = Pessoa();
      pessoa.setNome('Bruno');
      expect(pessoa.getNome(), 'Bruno');
    });

    test('Deve retornar o peso de uma pessoa', () {
      var pessoa = Pessoa();
      pessoa.setPeso(80);
      expect(pessoa.getPeso(), 80);
    });

    test('Deve retornar a altura de uma pessoa', () {
      var pessoa = Pessoa();
      pessoa.setAltura(1.80);
      expect(pessoa.getAltura(), 1.80);
    });
}
