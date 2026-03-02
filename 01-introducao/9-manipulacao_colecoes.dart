// 9. Manipulação de Elementos em Coleções

void main() {
  // Cria uma lista de números inteiros
  List<int> numbers = [1, 2, 3, 4, 5];

  // Remove o elemento no índice 2 da lista
  // Lembre-se: Índices começam em 0, então o índice 2 é o terceiro elemento (número 3)
  numbers.removeAt(2);

  // Exibe a lista após a remoção
  // Resultado esperado: [1, 2, 4, 5]
  print(numbers);
}
