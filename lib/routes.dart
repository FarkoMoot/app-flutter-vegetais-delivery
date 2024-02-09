import 'package:projeto_frutas/app/home_screen.dart';
import 'package:routefly/routefly.dart';

//screens or pages
import 'package:projeto_frutas/app/login_screen.dart';
import 'package:projeto_frutas/app/splash_screen.dart';
import 'package:projeto_frutas/app/intro_screen.dart';


List<RouteEntity> get routes => [
  RouteEntity(
    key: '/intro',
    uri: Uri.parse('/intro'),
    routeBuilder: (context, settings) => Routefly.defaultRouteBuilder(
      context,
      settings,
      const IntroScreen(),
    ),
  ),
  RouteEntity(
    uri: Uri.parse('/splash'),
    key: '/splash',
    routeBuilder: (context, settings) => Routefly.defaultRouteBuilder(
      context,
      settings,
      SplashScreen(),
    ),

  ),
  RouteEntity(
    key: '/login',
    uri: Uri.parse('/login'),
    routeBuilder: (context, settings) => Routefly.defaultRouteBuilder(
      context,
      settings,
      const LoginScreen(),
    ),
  ),
  RouteEntity(
    key: '/home',
    uri: Uri.parse('/home'),
    routeBuilder: (context, settings) => Routefly.defaultRouteBuilder(
      context,
      settings,
      const HomeScreen(),
    ),
  )

];

const routePaths = (
  splash: '/splash',
  intro: '/intro',
  login: '/login',
  home: '/home',
);
