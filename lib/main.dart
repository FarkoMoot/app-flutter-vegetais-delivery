import 'dart:ui';

import 'package:flutter/material.dart';

//screens
import 'package:projeto_frutas/src/splash_screen.dart';
import 'package:projeto_frutas/src/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const IntroScreen(),
    );
  }
}
