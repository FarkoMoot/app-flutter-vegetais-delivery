import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Screens
import 'package:projeto_frutas/src/splash_screen.dart';
import 'package:projeto_frutas/src/intro_screen.dart';
import 'package:projeto_frutas/src/login_sreen.dart';
import 'package:projeto_frutas/src/home_screen.dart';
import 'package:projeto_frutas/src/items_screen.dart';
import 'package:projeto_frutas/src/cart_screen.dart';
import 'package:projeto_frutas/src/item_details_screen.dart';

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
      home: const ItemDetailsScreen(),
    );
  }
}
