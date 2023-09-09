import 'package:imc_calculator/classes/pessoa.dart';

double calcImc(Pessoa pessoa) {
  double imcFinal =
      pessoa.getPeso() / (pessoa.getAltura() * pessoa.getAltura());
  return pessoa.setImcFinal(imcFinal);
}
