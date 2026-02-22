import 'package:flutter/material.dart';
import 'components/multimedia_image_view.dart';
import 'components/multimedia_video_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estudos Jonas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Mantendo o tema blueGrey que você escolheu
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estudos Elementos Multimidia'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
        foregroundColor: Colors.white,
      ),
      // O SingleChildScrollView evita erros de espaço (overflow) no Ubuntu
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Galeria Multimídia',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            // Componente de Imagem (Stateless)
            const MultimediaImageView(),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Divider(),
            ),

            const Text(
              'Demonstração de Vídeo',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),

            const SizedBox(height: 10),

            // O seu componente de vídeo (Stateful) deve ser chamado aqui.
            // O código do FutureBuilder e do Play/Pause deve ficar dentro do arquivo multimedia_video_view.dart
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: MultimediaVideoView(),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
