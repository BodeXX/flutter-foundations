// 4. Classes e métodos
// Definindo uma classe chamada 'Person'
class Person {
  // 1. Atributos da classe: 'name' (nome) e 'age' (idade)
  String name; // Armazena o nome da pessoa
  int age;    // Armazena a idade da pessoa

  // 2. Construtor da classe 'Person'
  // Ele recebe os parâmetros e inicializa os atributos automaticamente usando 'this'
  Person(this.name, this.age);

  // 3. Método da classe: exibe uma mensagem de apresentação no console
  void introduce() {
    // O uso de '$name' e '$age' permite inserir os valores diretamente na string
    print('Hello, my name is $name and I am $age years old.');
  }
}

// Função principal onde o programa começa a ser executado
void main() {
  // Criando uma instância (objeto) da classe 'Person' chamada 'person'
  // Estamos passando 'John' como nome e 25 como idade
  var person = Person('John', 25);

  // Chamando o método 'introduce' da instância 'person'
  person.introduce();
}
