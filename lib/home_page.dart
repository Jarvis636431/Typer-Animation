import 'package:flutter/material.dart';

import 'widget/typer_animation.dart';
import 'widget/type_writer.dart';

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
          TyperAnimation(),//使用animated text暂时无法解决光标的问题,cursor好像被删掉了
          TypeWriterText()//使用自定义的type writer会频繁setstate刷新浪费资源
        ],
      ),
    );
  }
}