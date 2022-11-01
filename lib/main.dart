import 'package:flutter/material.dart';
import 'package:ui_audio_player/xylophone_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: XylophoneApp(),
    );
  }
}

