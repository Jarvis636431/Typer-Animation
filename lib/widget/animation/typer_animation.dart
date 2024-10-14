import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';


class TyperAnimation extends StatefulWidget {
  const TyperAnimation({Key? key}) : super(key: key);

  @override
  _TyperAnimationState createState() => _TyperAnimationState();
}

class _TyperAnimationState extends State<TyperAnimation> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 250.0,
        child: AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText(
              'Hello World',
              textStyle: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
              speed: const Duration(milliseconds: 100),
            ),
          ],
          repeatForever: true,
        ),
      ),
    );
  }
}