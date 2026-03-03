import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper {
  // 1. Instância privada para o Singleton
  static final DbHelper _instance = DbHelper._internal();
  static Database? _database;

  // 2. Construtor interno
  DbHelper._internal();

  // 3. Fábrica que retorna a mesma instância sempre
  factory DbHelper() => _instance;

  // 4. Getter para o banco de dados (abre se estiver fechado)
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDb();
    return _database!;
  }

  // 5. Inicialização do arquivo no Ubuntu
  Future<Database> _initDb() async {
    String path = join(await getDatabasesPath(), 'estudo_sqlite.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  // 6. Criação da Tabela
  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE items (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL
      )
    ''');
  }

  // 7. Método de Inserção Simples
  Future<int> insertItem(String name) async {
    final db = await database;
    return await db.insert('items', {
      'name': name,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  // 8. Método de Busca (Query)
  Future<List<Map<String, dynamic>>> getItems() async {
    final db = await database;
    return await db.query('items');
  }
}
