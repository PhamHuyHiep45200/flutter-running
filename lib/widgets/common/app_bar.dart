import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/svg.dart';
import 'package:working_app/enum/common.dart';
import 'package:working_app/navigations/navigation_service.dart';

class AppBarTravel extends StatelessWidget {
  final ModeHeaderBar mode;
  const AppBarTravel({super.key, this.mode = ModeHeaderBar.dark});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () {
            NavigationService.pop();
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: mode == ModeHeaderBar.dark
                  ? AppColor.lightGray
                  : AppColor.black.withOpacity(0.4),
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: SvgPicture.asset(
              AppSvg.arrow,
              color: mode == ModeHeaderBar.dark
                  ? AppColor.black
                  : AppColor.white,
            ),
          ),
        ),
      ],
    );
  }
}
