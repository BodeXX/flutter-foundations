import 'package:flutter/material.dart';
import '01_shared_preferences/shared_pref_screen.dart'; // Ajuste o caminho se necessário
import '02_sqlite/pages/sqlite_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Estudos de Persistência'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildModuleButton(
                context,
                'Módulo 01: Shared Preferences',
                const SharedPrefScreen(),
                Colors.blue,
              ),
              const SizedBox(height: 20),
              _buildModuleButton(
                context,
                'Módulo 02: SQLite (Banco Relacional)',
                const SqlitePage(),
                Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildModuleButton(
    BuildContext context,
    String title,
    Widget page,
    Color color,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      ),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
