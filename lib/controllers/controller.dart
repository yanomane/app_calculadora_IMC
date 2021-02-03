class Controller {
  String calculaImc(String weightText, String heigthText) {
    double weigth = double.parse(weightText);
    double heigth = double.parse(heigthText) / 100;
    double imc = weigth / (heigth * heigth);
    String _infoText;
    if (imc < 18.6) {
      _infoText = ' Abaixo do Peso (${imc.toStringAsPrecision(4)})';
    } else if (imc >= 18.6 && imc < 24.9) {
      _infoText = ' Peso Ideal (${imc.toStringAsPrecision(4)})';
    } else if (imc >= 24.9 && imc < 29.9) {
      _infoText = ' Levemente Acima do Peso (${imc.toStringAsPrecision(4)})';
    } else if (imc >= 29.9 && imc < 34.9) {
      _infoText = ' Obesidade Grau I (${imc.toStringAsPrecision(4)})';
    } else if (imc >= 34.9 && imc < 39.9) {
      _infoText = ' Obesidade Grau II (${imc.toStringAsPrecision(4)})';
    } else if (imc >= 40) {
      _infoText = 'Obesidade Grau III (${imc.toStringAsPrecision(4)})';
    }

    return _infoText;
  }
}
