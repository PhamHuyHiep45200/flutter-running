import 'package:flutter/material.dart';
import 'package:working_app/consts/colors.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 44,
          padding: EdgeInsets.fromLTRB(4, 4, 12, 4),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: AppColor.lightGray,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Row(
            spacing: 8,
            children: [
              Image.network(
                'https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-High-Quality-Image.png',
                width: 36,
                height: 36,
              ),
              Text('Hiep Huy'),
            ],
          ),
        ),
        Container(
          height: 44,
          width: 44,
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            color: AppColor.lightGray,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Icon(
            Icons.notifications_none,
            color: AppColor.lightText,
          ),
        ),
      ],
    );
  }
}
