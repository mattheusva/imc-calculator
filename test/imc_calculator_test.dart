import 'package:imc_calculator/classes/pessoa.dart';
import 'package:imc_calculator/imc_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('calcular imc', () {
    Pessoa usuario = Pessoa("Matheus", 55, 1.70);
    expect(calcImc(usuario), lessThan(20));
  });
}
