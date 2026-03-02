// 6. Conjuntos

// 1. Criando e Usando Conjuntos
// Função principal onde o programa começa a ser executado

void main () {
    // Cria um conjunto (set) chamado 'numbers' que armazena números inteiros
    Set<int> numbers = {1, 2, 3, 4};

    // Tenta adicionar o número 4 ao conjunto
    // Como um Set não permite duplicatas, o número 4 não será adicionado novamente.
    numbers.add(4);

    // Exibe o contéudo do conjunto 'numbers'
    print(numbers); // A saida será {1, 2, 3, 4}
}
