import 'package:flutter/material.dart';

class MultimediaImageView extends StatelessWidget {
  const MultimediaImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        'https://picsum.photos/200/300',
        width: 300,
        height: 300,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return const CircularProgressIndicator();
        },
        errorBuilder: (context, error, stackTrace) {
          return const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.error, color: Colors.red, size: 50),
              SizedBox(height: 8),
              Text('Erro ao carregar imagem'),
            ],
          );
        },
      ),
    );
  }
}
