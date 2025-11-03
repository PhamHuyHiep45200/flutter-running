import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/font_size.dart';
import 'package:working_app/widgets/common/app_header.dart';
import 'package:working_app/widgets/common/card_container.dart';

class HomeBottomScreen extends StatefulWidget {
  const HomeBottomScreen({super.key});

  @override
  State<HomeBottomScreen> createState() => _HomeBottomScreenState();
}

class _HomeBottomScreenState extends State<HomeBottomScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          children: [
            // Gap(24),
            SizedBox(
              width: double.infinity,
              child: Text(
                'Explore the',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: AppFontSize.s38,
                  color: AppColor.lightText,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                'Beautiful world!',
                style: TextStyle(
                  fontSize: AppFontSize.s38,
                  fontWeight: FontWeight.bold,
                  color: AppColor.lightText,
                ),
              ),
            ),
            Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Destination',
                  style: TextStyle(
                    fontSize: AppFontSize.s20,
                    fontWeight: FontWeight.w600,
                    color: AppColor.lightText,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'View all',
                    style: TextStyle(
                      fontSize: AppFontSize.s14,
                      color: AppColor.primary,
                    ),
                  ),
                ),
              ],
            ),
            Gap(16),
            CardContainer(
              child: Column(
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
                    ],
                  ),
                  Gap(8)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
