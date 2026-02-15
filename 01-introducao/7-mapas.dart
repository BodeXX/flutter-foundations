// 7. Mapas (Maps)

void main() {
  // 1. Criando e Usando Mapas
  // Um Map chamado 'capitals' que associa países às suas capitais
  // As chaves e os valores aqui são do tipo String
  Map<String, String> capitals = {
    'USA': 'Washington, D.C.', // Chave: 'USA', Valor: 'Washington, D.C.'
    'France': 'Paris',           // Chave: 'France', Valor: 'Paris'
    'Japan': 'Tokyo'            // Chave: 'Japan', Valor: 'Tokyo'
  };

  // Acessa e exibe o valor associado à chave 'France' no Map
  // O valor exibido será 'Paris'
  print('A capital da França é: ${capitals['France']}');

  // Adiciona um novo par chave-valor ao Map
  // Chave: 'Germany', Valor: 'Berlin'
  capitals['Germany'] = 'Berlin';

  // Exibe o conteúdo atualizado do Map, incluindo o novo par
  print('Mapa completo: $capitals');
}
