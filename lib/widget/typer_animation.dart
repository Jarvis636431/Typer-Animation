import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CustomTyperAnimation extends StatelessWidget {
  final String text;

  CustomTyperAnimation({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Theme.of(context).colorScheme.inversePrimary,
        width: 250.0,
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
                text,
                textStyle: const TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
                speed: const Duration(milliseconds: 200),
                curve: Curves.linearToEaseOut,
                cursor: '|'
            ),
          ],
          repeatForever: true,
        ),
      ),
    );
  }
}