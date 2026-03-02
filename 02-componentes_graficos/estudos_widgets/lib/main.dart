import 'package:flutter/material.dart';
import 'components/secao_texto.dart';
import 'components/secao_container.dart';
import 'components/secao_row.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estudo de Widgets',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widgets Básicos e Simples'),
          backgroundColor: Colors.blue.shade100,
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              SecaoText(),
              Divider(), // Linha divisória
              SecaoContainer(),
              Divider(),
              SecaoRowColumn(),
              Divider(),
              // Exemplo do Scaffold descrito no texto
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Exemplo de Scaffold Widget:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Este aplicativo usa um Scaffold com AppBar e FloatingActionButton',
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {}, // Função vazia
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
