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
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppColor.lightGray,
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: SvgPicture.asset(AppSvg.arrow),
          ),
        ),
      ],
    );
  }
}
