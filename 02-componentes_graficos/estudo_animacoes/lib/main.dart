import 'package:flutter/material.dart';
import 'components/section_animated_container.dart';
import 'components/section_animated_opacity.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Estudos Descomplica - Animações')),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: const [
                SizedBox(height: 20),
                AnimatedContainerView(),
                Divider(),
                AnimatedOpacityView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
