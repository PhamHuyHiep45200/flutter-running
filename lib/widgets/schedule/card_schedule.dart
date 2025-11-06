import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/font_size.dart';
import 'package:working_app/consts/svg.dart';
import 'package:working_app/enum/card.dart';
import 'package:working_app/widgets/common/card_container.dart';

class CardSchedule extends StatelessWidget {
  const CardSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      size: CardSize.small,
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: Row(
          spacing: 16,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                'https://images.baodantoc.vn/uploads/2023/Thang-10/Ngay-13/Truong-Thuan/1.jpg',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 6,
                    children: [
                      SvgPicture.asset(AppSvg.calendar),
                      Text(
                        '26 January 2022',
                        style: TextStyle(
                          color: AppColor.gray,
                          fontSize: AppFontSize.s13,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Niladri Reservoir',
                    style: TextStyle(
                      color: AppColor.lightText,
                      fontSize: AppFontSize.s16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    spacing: 6,
                    children: [
                      SvgPicture.asset(AppSvg.location),
                      Text(
                        'Darma, Kuningan',
                        style: TextStyle(
                          color: AppColor.gray,
                          fontSize: AppFontSize.s13,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
