import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context){

    return Container(
      color: Color.fromRGBO(0, 153, 89, 1),
      child: const Center(
        child: Image(
          image: AssetImage('images/logo1.png'),
        ),
      ),
    );
  }
}
