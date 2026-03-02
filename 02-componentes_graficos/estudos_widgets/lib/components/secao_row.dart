import 'package:flutter/material.dart';

class SecaoRowColumn extends StatelessWidget {
  const SecaoRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Exemplo de Row e Column Widgets:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Linha 1, '), Text('Item 1')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Linha 2, '), Text('Item 2')],
            ),
          ],
        ),
      ],
    );
  }
}
