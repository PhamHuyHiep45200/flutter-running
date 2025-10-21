import 'package:flutter/material.dart';
import 'package:working_app/consts/router.dart';
import 'package:working_app/screens/home/home_screen.dart';
import 'package:working_app/screens/login/login_screen.dart';
import 'package:working_app/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // MaterialApp contains our top-level Navigator
      initialRoute: AppScreen.splash,
      routes: <String, WidgetBuilder>{
        AppScreen.splash: (BuildContext context) => const SplashScreen(),
        AppScreen.home: (BuildContext context) => const HomeScreen(),
        AppScreen.login: (BuildContext context) => const LoginScreen(),
      },
    );
  }
}
