// Programação OO com Dart
// Construtores Nomeados

class Pessoa {
  String nome;
  int idade;

  // Construtor padrão
  Pessoa(this.nome, this.idade);

  // Construtor nomeado
  Pessoa.nomeado(this.nome) : idade = 0;
}

void main() {
  // Criando instância com construtor padrão
  var p1 = Pessoa('Alice', 30);

  // Criando instância com construtor nomeado
  var p2 = Pessoa.nomeado('Bob');

  // Exibindo os resultados
  print('Pessoa 1: ${p1.nome}, ${p1.idade}');
  print('Pessoa 2: ${p2.nome}, ${p2.idade}');
}
