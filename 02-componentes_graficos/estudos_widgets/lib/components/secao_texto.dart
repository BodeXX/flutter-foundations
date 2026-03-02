import 'package:flutter/material.dart';

class SecaoText extends StatelessWidget {
  const SecaoText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Exemplo de Text Widget:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(padding: EdgeInsets.all(8.0), child: Text('Olá, Mundo!')),
      ],
    );
  }
}
