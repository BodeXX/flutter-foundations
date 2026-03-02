// Programação OO com Dart
// Classes e Objetos
// 1. Definindo Classes e Criando Objetos

// Definindo uma classe chamada 'Car'
class Car {
  // Atributos da classe 'Car': 'model' (modelo) e 'year' (ano)
  String model; // Armazena o modelo do carro
  int year;    // Armazena o ano do carro

  // Construtor da classe 'Car'
  // Ele recebe dois parâmetros: o modelo e o ano, e inicializa os atributos da classe
  Car(this.model, this.year);

  // Método da classe que exibe as informações do carro no console
  void displayInfo() {
    // O método 'displayInfo' exibe o modelo e o ano do carro
    print('Model: $model, Year: $year');
    // O uso de '$model' e '$year' permite que o valor das variáveis seja inserido na string
  }
}

void main() {
  // Criando uma instância da classe 'Car' chamada 'car'
  // Estamos passando 'Toyota' como o modelo e 2020 como o ano
  var car = Car('Toyota', 2020);

  // Chamando o método 'displayInfo' da instância 'car'
  car.displayInfo();
}
