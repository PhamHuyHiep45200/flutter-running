import 'package:flutter/material.dart';
import 'package:working_app/consts/router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    _timeOutHandle();
  }

  Future _timeOutHandle() async {
    await Future.delayed(const Duration(seconds: 2), ()=>{
      Navigator.pushNamed(context, AppScreen.login)
    });
  }
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Splash Screen'),
      ),
    );
  }
}