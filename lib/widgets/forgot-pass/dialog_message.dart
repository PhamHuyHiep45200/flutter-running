import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/svg.dart';
import 'package:working_app/widgets/common/button.dart';

class DialogMeassage extends StatelessWidget {
  final Function? onPress;
  const DialogMeassage({super.key, this.onPress});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColor.white,
      title: SvgPicture.asset(AppSvg.gmail),
      content: const SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(
              'Check your email',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: AppColor.lightText,
              ),
            ),
            Gap(8),
            Text(
              'We have send password recovery instruction to your email',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: AppColor.gray),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        ButtonTravel(
          text: 'Next',
          onPress: () {
            onPress?.call();
          },
        ),
      ],
    );
  }
}
