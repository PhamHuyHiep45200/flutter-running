import 'package:flutter/material.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/font_size.dart';

class ButtonTravel extends StatelessWidget {
  final VoidCallback? onPress;
  final String text;
  final double height;
  final double? width;

  const ButtonTravel({
    super.key,
    this.onPress,
    required this.text,
    this.height = 56,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColor.primary,
        ),
        height: height,
        width: width ?? double.infinity,
        alignment: AlignmentGeometry.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: AppFontSize.s16,
            color: AppColor.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
