import 'package:flutter/material.dart';
import 'package:working_app/consts/router.dart';
import 'package:working_app/navigations/navigation_service.dart';
import 'package:working_app/screens/detail-travel/detail_travel_screen.dart';
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
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // MaterialApp contains our top-level Navigator
      theme: ThemeData(
        fontFamily: 'Poppins',
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {TargetPlatform.android: CupertinoPageTransitionsBuilder()},
        ),
      ),
      routerConfig: NavigationService.router,
    );
  }
}
