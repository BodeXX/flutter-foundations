import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Retorna o MaterialApp, onde definimos o tema global do aplicativo
  const MyApp({super.key});

  // Esse widget é a raiz da aplicação
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Definindo o tema global com a classe ThemeData
      theme: ThemeData(
        primarySwatch: Colors
            .blue, // Define a cor principál do aplicativo ( usada no AppBar, por exemplo)
        // Definindo um tema de texto global com a classe TextTheme
        textTheme: const TextTheme(
          // Estilo para bodtext1 (usado no corpo do aplicativo)
          bodyLarge: TextStyle(color: Colors.red, fontSize: 20),
        ),
      ),

      // Definindo a página inicial do aplicativo
      home: Scaffold(
        appBar: AppBar(
          // O AppBar usa a cor definida como primarySwatch no tem global
          title: const Text('Tema Global'),
        ),
        body: const Center(
          // O texto aqui usa o tema global definido no TextTheme
          child: Text('Texto com tema personalizado'),
        ),
      ),
    );
  }
}
