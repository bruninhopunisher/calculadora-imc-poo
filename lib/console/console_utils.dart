import 'dart:convert';
import 'dart:io';

class ConsoleUltils {

  static String lerStringComTexto(String texto) {
    stdout.write(texto);
    return lerString();
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static lerDouble() {
    var value = lerString();
    try {
      while (double.tryParse(value) == null) {
        stdout.write('ValorInválido: valor inválido, digite novamente: ');
        value = lerString();
      }
      return double.parse(value);
    } catch (e) {
      String error() => "Valor não aceito";
      stdout.write('ValorInválido ${error()}');
      exit(0);
    }
  }

  static lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }
}