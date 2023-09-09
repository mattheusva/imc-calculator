class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;
  double _imcFinal = 0.0;

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _altura = altura;
    _peso = peso;
  }

  String getNome() {
    return _nome;
  }

  double getPeso() {
    return _peso;
  }

  double getAltura() {
    return _altura;
  }

  double setImcFinal(double imcFinal) {
    return _imcFinal = imcFinal;
  }

  double getImcFinal() {
    return _imcFinal;
  }
}
