import 'package:flutter/material.dart';

class SecaoContainer extends StatelessWidget {
  const SecaoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Exemplo de Container Widget:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.blue,
          child: const Text(
            'Texto dentro de um Container',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
