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
    // 1. Configuramos o vídeo (usando o link da aula)
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      ),
    );

    // 2. Inicializamos o carregamento
    _initializeVideoPlayerFuture = _controller.initialize();

    // 3. Deixamos em loop
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    // 4. IMPORTANTE: Limpa a memória para não travar seu Ubuntu
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
              // Se carregou, exibe o player com fundo preto para destaque
              return Container(
                color: Colors.black,
                child: AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                ),
              );
            } else {
              // Enquanto carrega os bytes pela rede
              return const SizedBox(
                height: 200,
                child: Center(child: CircularProgressIndicator()),
              );
            }
          },
        ),
        const SizedBox(height: 10),
        // Botão centralizado para Play/Pause
        ElevatedButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
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
