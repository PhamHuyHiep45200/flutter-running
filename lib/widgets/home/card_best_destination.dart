import 'package:avatar_stack/animated_avatar_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/font_size.dart';
import 'package:working_app/consts/svg.dart';

class CardBestDestination extends StatelessWidget {
  const CardBestDestination({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(20),
          child: Image.network(
            'https://images.baodantoc.vn/uploads/2023/Thang-10/Ngay-13/Truong-Thuan/1.jpg',
          ),
        ),
        Gap(14),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Niladri Reservoir',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: AppFontSize.s18,
                fontWeight: FontWeight.w500,
                color: AppColor.lightText,
              ),
            ),
            Row(
              spacing: 4,
              children: [
                SvgPicture.asset(AppSvg.star),
                Text(
                  '4.7',
                  style: TextStyle(
                    color: AppColor.lightText,
                    fontSize: AppFontSize.s15,
                  ),
                ),
              ],
            ),
          ],
        ),
        Gap(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 4,
              children: [
                SvgPicture.asset(AppSvg.location),
                Text(
                  'Dong Van',
                  style: TextStyle(
                    color: AppColor.gray,
                    fontSize: AppFontSize.s14,
                  ),
                ),
              ],
            ),
            AnimatedAvatarStack(
              height: 24,
              width: 65,
              avatars: [
                for (var n = 0; n < 15; n++)
                  NetworkImage('https://i.pravatar.cc/150?img=$n'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
