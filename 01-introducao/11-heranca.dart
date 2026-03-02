// Programação OO com Dart
// Herança

// Definindo uma classe chamada 'Animal'
class Animal {
  // Método da classe 'Animal'
  void comer() {
    print('Comendo...');
  }
}

// Classe 'Cachorro' herdando da classe 'Animal'
class Cachorro extends Animal {
  // Método próprio da classe 'Cachorro'
  void latir() {
    print('Latindo...');
  }
}

void main() {
  // Criando uma instância da classe 'Cachorro' chamada 'meuCachorro'
  var meuCachorro = Cachorro();

  // Chamando o método 'comer' (herdado) e o método 'latir' (próprio)
  meuCachorro.comer();
  meuCachorro.latir();
}
