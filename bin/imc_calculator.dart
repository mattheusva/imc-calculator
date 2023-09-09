import 'dart:io';

import 'package:imc_calculator/classes/pessoa.dart';
import 'package:imc_calculator/imc_calculator.dart' as imc_calculator;

void main(List<String> arguments) {
  print("Seu nome: ");
  String nome = stdin.readLineSync() ?? "";
  print("Seu peso:");
  double peso = double.parse(stdin.readLineSync() ?? "0");
  print("sua altura:");
  double altura = double.parse(stdin.readLineSync() ?? "0");

  Pessoa usuario = Pessoa(nome, peso, altura);

  try {
    switch (imc_calculator.calcImc(usuario)) {
      case < 16:
        print(
            "${usuario.getNome()}, seu IMC: ${usuario.getImcFinal()} está com magresa grave");
        break;
      case < 17:
        print(
            "${usuario.getNome()}, seu IMC: ${usuario.getImcFinal()} está com magresa moderada");
        break;
      case < 18.5:
        print(
            "${usuario.getNome()}, seu IMC: ${usuario.getImcFinal()} está com magresa leve");
        break;
      case < 25:
        print(
            "${usuario.getNome()}, seu IMC: ${usuario.getImcFinal()} está saudável");
        break;
      case < 30:
        print(
            "${usuario.getNome()}, seu IMC: ${usuario.getImcFinal()} está com sobrepeso");
        break;
      case < 35:
        print(
            "${usuario.getNome()}, seu IMC: ${usuario.getImcFinal()} está com obesidade grau 1");
        break;
      case < 40:
        print(
            "${usuario.getNome()}, seu IMC: ${usuario.getImcFinal()} está com obesidade grau 2 (severa)");
        break;
      case > 40:
        print(
            "${usuario.getNome()}, seu IMC: ${usuario.getImcFinal()} está com obesidade grau 3 (mórbida)");
        break;
    }
  } catch (e) {
    throw Exception("ocorreu um erro!");
  }
}
