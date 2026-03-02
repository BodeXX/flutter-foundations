// 8. Operações Comuns
// 1. Iteração em Coleções

void main() {
  // Cria uma lista de strings chamada 'fruits' com três frutas
  List<String> fruits = ['Apple', 'Banana', 'Orange'];

  // Um loop 'for-in' que percorre cada elemento (fruta) da lista 'fruits'
  // Para cada elemento, a variável 'fruit' será atribuída ao item atual da lista
  for (var fruit in fruits) {
    // Exibe o valor atual de 'fruit' na consola
    print(fruit); // A saída será: 'Apple', 'Banana', 'Orange'
  }
}
