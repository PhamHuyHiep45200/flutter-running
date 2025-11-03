import 'package:flutter/material.dart';
import 'package:working_app/consts/router.dart';
import 'package:working_app/screens/forgot-pass-verify/forgot_pass_verify_screen.dart';
import 'package:working_app/screens/forgot-pass/forgot_pass_screen.dart';
import 'package:working_app/screens/guids/guids_screen.dart';
import 'package:working_app/screens/home/home_screen.dart';
import 'package:working_app/screens/login/login_screen.dart';
import 'package:working_app/screens/register/register_screen.dart';
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
      theme: ThemeData(
        fontFamily: 'Poppins',
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {TargetPlatform.android: CupertinoPageTransitionsBuilder()},
        ),
      ),
      
      initialRoute: AppScreen.splash,
      routes: <String, WidgetBuilder>{
        AppScreen.splash: (BuildContext context) => const SplashScreen(),
        AppScreen.guid: (BuildContext context) => const GuidTour(),
        AppScreen.login: (BuildContext context) => const LoginScreen(),
        AppScreen.register: (BuildContext context) => const RegisterScreen(),
        AppScreen.forgotPassword: (BuildContext context) => const ForgotPassScreen(),
        AppScreen.forgotPasswordVerify: (BuildContext context) => const ForgotPassVerifyScreen(),
        AppScreen.home: (BuildContext context) => const HomeScreen(),
      },
    );
  }
}
