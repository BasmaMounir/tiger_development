import 'package:flutter/material.dart';

class ScaffoldBackground extends StatelessWidget {
  const ScaffoldBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/tiger background.jpeg',
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.cover,
    );
  }
}
