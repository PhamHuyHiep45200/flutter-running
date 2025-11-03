import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:gap/gap.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/font_size.dart';
import 'package:working_app/widgets/common/app_bar.dart';
import 'package:working_app/widgets/common/button.dart';
import 'package:working_app/widgets/common/input.dart';
import 'package:working_app/widgets/forgot-pass/dialog_message.dart';

class ForgotPassVerifyScreen extends StatefulWidget {
  const ForgotPassVerifyScreen({super.key});

  @override
  State<ForgotPassVerifyScreen> createState() => _ForgotPassVerifyScreenState();
}

class _ForgotPassVerifyScreenState extends State<ForgotPassVerifyScreen> {
  int count = 0;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

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
                            'OTP Verification',
                            style: TextStyle(
                              fontSize: AppFontSize.s26,
                              color: AppColor.lightText,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Gap(12),
                          Text(
                            'Please check your email www.uihut@gmail.com to see the verification code',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColor.gray,
                              fontSize: AppFontSize.s16,
                            ),
                          ),
                          Gap(24),
                          OtpTextField(
                            autoFocus: true,
                            numberOfFields: 4,
                            filled: true,
                            fillColor: AppColor.lightGray,
                            borderColor: AppColor.lightGray,
                            enabledBorderColor: AppColor.lightGray,
                            disabledBorderColor: AppColor.lightGray,
                            focusedBorderColor: AppColor.primary,
                            fieldWidth: 70,
                            fieldHeight: 56,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12),
                            ),
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //set to true to show as box or false to show as dash
                            showFieldAsBox: true,
                            onSubmit: (String verificationCode) {
                              print(verificationCode);
                            },
                          ),
                          Gap(40),
                          ButtonTravel(
                            text: 'Verify',
                            onPress: () {},
                          ),
                          Gap(16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  'Resend code to',
                                  style: TextStyle(
                                    color: AppColor.gray,
                                    fontSize: AppFontSize.s16,
                                  ),
                                ),
                              ),
                              Text(
                                '01:26',
                                style: TextStyle(
                                  color: AppColor.gray,
                                  fontSize: AppFontSize.s16,
                                ),
                              ),
                            ],
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
