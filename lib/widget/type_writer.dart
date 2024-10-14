import 'package:flutter/material.dart';

class TypeWriterText extends StatefulWidget {
  @override
  _TypeWriterTextState createState() => _TypeWriterTextState();
}

class _TypeWriterTextState extends State<TypeWriterText> {
  String text = "Hello, how are you today? I'm here to help you.";
  String displayedText = "";
  int charPosition = 0;

  @override
  void initState() {
    super.initState();
    _typeWriterEffect();
  }

  void _typeWriterEffect() {
    Future.delayed(Duration(milliseconds: 100), () {
      if (charPosition < text.length) {
        setState(() {
          displayedText += text[charPosition];
          charPosition++;
        });
        _typeWriterEffect();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(displayedText, style: TextStyle(fontSize: 24));
  }
}