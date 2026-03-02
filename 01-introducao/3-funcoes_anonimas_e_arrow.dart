// 3. Funções Anônimas e Arrow Functions

void main() {
  // 1. Função Anônima
  // Uma função sem nome, usada geralmente como argumento.

  // Declaração de uma lista de frutas usando a palavra-chave 'var'
  var frutas = ['Maçã', 'Banana', 'Laranja'];

  print('Lista de Frutas (Anônima)');
  // O método 'forEach' percorre cada item da lista
  // Para cada item, ele executa um bloco de código que está dentro das chaves
  frutas.forEach((item) {
    print('Fruta: $item');
  });

  // 2. Arrow Function (=>)
  // Ideal para funções de uma única linha.
  // O símbolo '=>' já indica o retorno automático.
  print('\n Lista de Frutas (Arrow)');
  frutas.forEach((item) => print('Fruta com arrow-function: $item'));
}
