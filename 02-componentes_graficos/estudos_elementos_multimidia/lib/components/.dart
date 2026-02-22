import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MultimediaVideoView extends StatefulWidget {
  const MultimediaVideoView({super.key});

  @override
  State<MultimediaVideoView> createState() => _MultimediaVideoViewState();
}

class _MultimediaVideoViewState extends State<MultimediaVideoView> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    // 1. Criamos o controller com o link do vídeo
    _controller = VideoPlayerController.networkUrl(
      Uri.parse('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    );

    // 2. Iniciamos o carregamento dos bytes
    _initializeVideoPlayerFuture = _controller.initialize();

    // 3. Configuramos para repetir o vídeo automaticamente
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    // 4. IMPORTANTE: Limpa a memória ao sair da tela
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // 5. Se carregou, exibe o vídeo com a proporção correta
              return AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              );
            } else {
              // 6. Enquanto carrega, mostra um loading
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying ? _controller.pause() : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ],
    );
  }
}
