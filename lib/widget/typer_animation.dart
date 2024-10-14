import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';


class TyperAnimation extends StatefulWidget {
  const TyperAnimation({Key? key}) : super(key: key) ;

  @override
  _TyperAnimationState createState() => _TyperAnimationState();
}


class _TyperAnimationState extends State<TyperAnimation> {

  String text = "Hello, how are you today? I'm here to help you.";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Theme.of(context).colorScheme.inversePrimary,
        width: 250.0,
        child: AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText(
              text,
              textStyle: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
              speed: const Duration(milliseconds: 100),
              curve: Curves.linearToEaseOut,
            ),
          ],
          repeatForever: true,
        ),
      ),
    );
  }
}