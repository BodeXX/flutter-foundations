import 'package:flutter/material.dart';

class AnimatedContainerView extends StatefulWidget {
  const AnimatedContainerView({super.key});

  @override
  State<AnimatedContainerView> createState() => _AnimatedContainerViewState();
}

class _AnimatedContainerViewState extends State<AnimatedContainerView> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  void _animate() {
    setState(() {
      _width = _width == 100 ? 200 : 100;
      _height = _height == 100 ? 200 : 100;
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
      _borderRadius = _borderRadius == BorderRadius.circular(8)
          ? BorderRadius.circular(50)
          : BorderRadius.circular(8);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
        ),
        ElevatedButton(
          onPressed: _animate,
          child: const Text('Animar Container'),
        ),
      ],
    );
  }
}
