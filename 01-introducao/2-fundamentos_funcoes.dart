// Declarando e chamando funções

// 1. Função Simples (sem parâmetros)



// Função principal
void main() {
    // Chama (executa) a função 'sayHello, que exibe a mensagem.
    sayHello();

    // Chama a função 'greet' e passa 'Jonas' como argumento
    greet('Jonas');

    // Chama a função 'add' passando os números 3 e 5 como argumentos
    // o resultado da soma será armazenado na variavel 'result'
    int result = add(3, 5);

    // Exibe o resultado da soma no console
    print('Result: $result');
}

// Função exibe 'Hello!' no console
void sayHello() {
    // exibe a mensagem
    print('Hello!');
}

// 2. Função Simples (com parâmetros)
// Função que recebe um nome como argumento e exibe uma saudação no console
void greet(String name) {
    // o comando exibe 'Hello, [nome]!' no console, usando a variável 'name'
    print('Hello, $name!');
}

// 3. Função com return

// Função que recebe dois números inteiros 'a' e 'b' e retorna a soma deles
int add (int a, int b) {
    // O comando return devolve a soma de 'a' + 'b' como resultado
    return a + b;
}
