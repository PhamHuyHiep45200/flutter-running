import 'package:flutter/material.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/widgets/common/app_bar.dart';
import 'package:working_app/widgets/common/input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColor.white,
        body: SafeArea(
          child: Column(
            children: [
              AppBarTravel(),
              Padding(padding: EdgeInsets.all(20), child: InputTravel()),
            ],
          ),
        ),
      ),
    );
  }
}
