import 'package:flutter/material.dart';

class AnimatedOpacityView extends StatefulWidget {
  const AnimatedOpacityView({super.key});

  @override
  State<AnimatedOpacityView> createState() => _AnimatedOpacityViewState();
}

class _AnimatedOpacityViewState extends State<AnimatedOpacityView> {
  double _opacity = 1.0;

  void _toggleOpacity() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.0 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(milliseconds: 500),
          child: const FlutterLogo(size: 100),
        ),
        TextButton(
          onPressed: _toggleOpacity,
          child: const Text('Toggle Opacity'),
        ),
      ],
    );
  }
}
