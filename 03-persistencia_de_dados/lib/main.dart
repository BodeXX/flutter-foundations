import 'package:flutter/material.dart';
import '01_shared_preferences/shared_pref_screen.dart'; // Import da sua nova tela

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estudos Persistência',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const SharedPrefScreen(), // Chama a tela do módulo 01
    );
  }
}
