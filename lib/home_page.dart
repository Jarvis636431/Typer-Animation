import 'package:flutter/material.dart';

import 'widget/typer_animation.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CustomTyperAnimation(text:'Hello World!Hello World!Hello World!Hello World!Hello World!Hello World!Hello World!Hello World!'),
        ],
      ),
    );
  }
}