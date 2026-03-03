class ItemModel {
  final int? id;
  final String name;

  ItemModel({this.id, required this.name});

  // Transforma o Objeto em Mapa (para salvar no banco)
  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name};
  }

  // Transforma o Mapa vindo do banco em Objeto (para usar no Flutter)
  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(id: map['id'], name: map['name']);
  }
}
