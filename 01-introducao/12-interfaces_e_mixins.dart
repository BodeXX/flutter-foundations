// Programação OO com Dart
// Interfaces e Mixins

// Definindo uma classe abstrata (Interface)
abstract class Forma {
  void desenhar();
}

// Classe 'Circulo' implementando a interface 'Forma'
class Circulo implements Forma {
  @override
  void desenhar() {
    print('Desenhando um círculo');
  }
}

// Criando um Mixin para adicionar funcionalidade
mixin PodeVoar {
  void voar() {
    print('Voando...');
  }
}

// Classe 'Passaro' utilizando o mixin 'PodeVoar'
class Passaro with PodeVoar {}

void main() {
  // Testando a Interface
  var circulo = Circulo();
  circulo.desenhar();

  // Testando o Mixin
  var passaro = Passaro();
  passaro.voar();
}
