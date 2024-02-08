import 'package:flutter/material.dart';
import 'package:projeto_frutas/routes.dart';
import 'package:routefly/routefly.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Routefly.navigate(routePaths.intro);
    });
  }
  
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
