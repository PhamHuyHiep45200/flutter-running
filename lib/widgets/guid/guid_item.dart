import 'package:flutter/material.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/font_size.dart';

class GuidItem extends StatelessWidget {
  final String thumbnail;
  const GuidItem({super.key, required this.thumbnail});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          child: Image.network(
            thumbnail,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(40, 40, 40, 0),
          child: Text(
            'Life is short and the world is wide',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: AppFontSize.s30,
              color: AppColor.black,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: Text(
            'To get the best of your adventure you just need to leave and go where you like. we are waiting for you',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: AppFontSize.s16, color: AppColor.gray),
          ),
        ),
      ],
    );
  }
}
