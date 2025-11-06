import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/font_size.dart';
import 'package:working_app/extentions/widget_extentions.dart';
import 'package:working_app/widgets/common/avatar_travel.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Gap(30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 96,
                  width: 96,
                  child: AvatarTravel(
                    avatar:
                        'https://images.baodantoc.vn/uploads/2023/Thang-10/Ngay-13/Truong-Thuan/1.jpg',
                  ),
                ),
                Gap(8),
                Text(
                  'Huy Hiep',
                  style: TextStyle(
                    color: AppColor.lightText,
                    fontSize: AppFontSize.s24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Gap(4),
                Text(
                  'huyhiep4520@gail.com',
                  style: TextStyle(
                    color: AppColor.gray,
                    fontSize: AppFontSize.s14,
                  ),
                ),
                Gap(30),
              ],
            ),
            Container(
              height: 78,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.lightText.withOpacity(0.04), // màu bóng
                    spreadRadius: 1, // độ lan
                    blurRadius: 5, // độ mờ
                    offset: Offset(0, 3), // hướng bóng: (x, y)
                  ),
                ],
              ),
              child: Row(
                spacing: 2,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Travel Trips',
                          style: TextStyle(
                            color: AppColor.lightText,
                            fontSize: AppFontSize.s14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '200',
                          style: TextStyle(
                            color: AppColor.primary,
                            fontSize: AppFontSize.s16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ).color(AppColor.white),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Bucket List',
                          style: TextStyle(
                            color: AppColor.lightText,
                            fontSize: AppFontSize.s14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '356',
                          style: TextStyle(
                            color: AppColor.primary,
                            fontSize: AppFontSize.s16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ).color(AppColor.white),
                  ),
                ],
              ).radius(16),
            ),
            Gap(30),
            ListTile(
              leading: Icon(Icons.account_circle_outlined),
              title: Text('Profile'),
              trailing: Icon(Icons.keyboard_arrow_right),
              minVerticalPadding: 25
            ),
            Divider(height: 0, color: AppColor.lightGray),
            ListTile(
              leading: Icon(Icons.bookmark_outline),
              title: Text('Bookmarked'),
              trailing: Icon(Icons.keyboard_arrow_right),
              minVerticalPadding: 25
            ),
            Divider(height: 0, color: AppColor.lightGray),
            ListTile(
              leading: Icon(Icons.route_outlined),
              title: Text('Previous Trips'),
              trailing: Icon(Icons.keyboard_arrow_right),
              minVerticalPadding: 25
            ),
            Divider(height: 0, color: AppColor.lightGray),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              trailing: Icon(Icons.keyboard_arrow_right),
              minVerticalPadding: 25
            ),
            Divider(height: 0, color: AppColor.lightGray),
          ],
        ).padding(EdgeInsets.symmetric(horizontal: 20)),
      ),
    );
  }
}
