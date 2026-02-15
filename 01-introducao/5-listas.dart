// 5. Coleções em Dart

// Listas
// 1.Criando e Usando Listas

// Função principal onde o programa começa a ser executado
void main () {
    List<String> fruits = ['Apple', 'Banana', 'Orange'];

    // Acessa e exibe o primeiro elemento da lista, que é 'Apple'
    // O índice 0 representa o primeiro item da lista
    print(fruits[0]);

    // Adiciona a fruta 'Grape' à lista usando o método 'add'
    fruits.add('Grape');

    // Exibe a lista completa após a adição do novo item
    print(fruits);
}
