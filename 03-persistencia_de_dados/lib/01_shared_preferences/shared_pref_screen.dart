import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefScreen extends StatefulWidget {
  const SharedPrefScreen({super.key});

  @override
  State<SharedPrefScreen> createState() => _SharedPrefScreenState();
}

class _SharedPrefScreenState extends State<SharedPrefScreen> {
  // Controladores e Variáveis
  final TextEditingController _controller = TextEditingController();
  String _savedData = 'Nenhum dado salvo';

  @override
  void initState() {
    super.initState();
    _loadData(); // Carrega os dados assim que a tela inicia
  }

  // Função para salvar os dados
  Future<void> _saveData(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('my_key', value);
    setState(() {
      _savedData = value;
    });
  }

  // Função para carregar os dados salvos
  Future<void> _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _savedData = prefs.getString('my_key') ?? 'Nenhum dado salvo';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Persistência de Dados - SharedPrefs')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Digite algo para salvar',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _saveData(_controller.text),
              child: const Text('Salvar Dados'),
            ),
            const SizedBox(height: 20),
            Text('Dado salvo: $_savedData'),
          ],
        ),
      ),
    );
  }
}
