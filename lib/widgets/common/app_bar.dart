import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/svg.dart';

class AppBarTravel extends StatelessWidget {
  const AppBarTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(100),
          child: SvgPicture.asset(AppSvg.arrow),
        ),
      ],
    );
  }
}
