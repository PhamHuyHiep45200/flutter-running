import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/font_size.dart';
import 'package:working_app/consts/router.dart';
import 'package:working_app/widgets/common/app_bar.dart';
import 'package:working_app/widgets/common/button.dart';
import 'package:working_app/widgets/common/input.dart';
import 'package:working_app/widgets/forgot-pass/dialog_message.dart';

class ForgotPassScreen extends StatefulWidget {
  const ForgotPassScreen({super.key});

  @override
  State<ForgotPassScreen> createState() => _ForgotPassScreenState();
}

class _ForgotPassScreenState extends State<ForgotPassScreen> {
  int count = 0;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  void handleVerify() {
    Navigator.pushNamed(context, AppScreen.forgotPasswordVerify);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Column(
          children: [
            AppBarTravel(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Gap(32),
                          Text(
                            'Forgot Password',
                            style: TextStyle(
                              fontSize: AppFontSize.s26,
                              color: AppColor.lightText,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Gap(12),
                          Text(
                            'Enter your email account to reset  your password',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColor.gray,
                              fontSize: AppFontSize.s16,
                            ),
                          ),
                          Gap(24),
                          InputTravel(
                            hintText: 'Enter Email',
                            controller: _emailController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              if (!RegExp(
                                r'^[^@]+@[^@]+\.[^@]+',
                              ).hasMatch(value)) {
                                return 'Enter a valid email';
                              }
                              return null;
                            },
                          ),
                          Gap(40),
                          ButtonTravel(
                            text: 'Reset Password',
                            onPress: () {
                              if (_formKey.currentState!.validate()) {
                                print(_emailController.value.text);
                                showDialog(
                                  context: context,
                                  builder: (context) => DialogMeassage(onPress: handleVerify),
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
