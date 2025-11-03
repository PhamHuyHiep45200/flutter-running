import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/font_size.dart';
import 'package:working_app/consts/router.dart';
import 'package:working_app/consts/svg.dart';
import 'package:working_app/navigations/navigation_service.dart';
import 'package:working_app/widgets/common/app_bar.dart';
import 'package:working_app/widgets/common/button.dart';
import 'package:working_app/widgets/common/input.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  int count = 0;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();

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
                            'Sign up now',
                            style: TextStyle(
                              fontSize: AppFontSize.s26,
                              color: AppColor.lightText,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Gap(12),
                          Text(
                            'Please fill the details and create account',
                            style: TextStyle(
                              color: AppColor.gray,
                              fontSize: AppFontSize.s16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Gap(40),
                          InputTravel(
                            hintText: 'Enter Username',
                            controller: _usernameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your username';
                              }
                              return null;
                            },
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
                          Gap(24),
                          InputTravel(
                            obscureText: true,
                            hintText: 'Enter password',
                            controller: _passwordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              if (value.length < 6) {
                                return 'Password must be at least 6 characters';
                              }
                              return null;
                            },
                          ),
                          Gap(40),
                          ButtonTravel(
                            text: 'Sign Up',
                            onPress: () {
                              if (_formKey.currentState!.validate()) {
                                print(_emailController.value.text);
                              }
                            },
                          ),
                          Gap(20),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Don’t have an account? ',
                                  style: TextStyle(
                                    color: AppColor.gray,
                                    fontSize: AppFontSize.s14,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Sign in',
                                  style: TextStyle(
                                    color: AppColor.primary,
                                    fontSize: AppFontSize.s14,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      NavigationService.goNamed(
                                        AppScreen.login,
                                      );
                                    },
                                ),
                              ],
                            ),
                          ),
                          Gap(15),
                          Text(
                            'Or connect',
                            style: TextStyle(
                              color: AppColor.gray,
                              fontSize: AppFontSize.s14,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 8,
                            children: [SvgPicture.asset(AppSvg.fb)],
                          ),
                          Gap(40),
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
