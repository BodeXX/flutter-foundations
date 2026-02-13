// Declarando e chamando funções

// 1. Função Simples (sem parâmetros)



// Função principal
void main() {
    // Chama (executa) a função 'sayHello, que exibe a mensagem.
    sayHello();

    // Chama a função 'greet' e passa 'Jonas' como argumento
    greet('Jonas');
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
