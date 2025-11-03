import 'package:flutter/material.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/font_size.dart';
import 'package:working_app/consts/router.dart';
import 'package:working_app/navigations/navigation_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _timeOutHandle();
  }

  Future _timeOutHandle() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () => {NavigationService.goNamed(AppScreen.guid)},
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.primary,
      body: Center(
        child: Text(
          'Travenor',
          style: TextStyle(
            color: AppColor.white,
            fontSize: AppFontSize.s30,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
