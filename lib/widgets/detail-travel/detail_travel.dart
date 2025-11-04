import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/font_size.dart';
import 'package:working_app/consts/svg.dart';
import 'package:working_app/extentions/widget_extentions.dart';
import 'package:working_app/widgets/common/avatar_travel.dart';
import 'package:working_app/widgets/common/button.dart';

class DetailTravel extends StatefulWidget {
  const DetailTravel({super.key});

  @override
  State<DetailTravel> createState() => _DetailTravelState();
}

class _DetailTravelState extends State<DetailTravel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Niladri Reservoir',
                            style: TextStyle(
                              fontSize: AppFontSize.s24,
                              fontWeight: FontWeight.w500,
                              color: AppColor.lightText,
                            ),
                          ),
                          Gap(4),
                          Text(
                            'Tekergat, Sunamgnj',
                            style: TextStyle(
                              fontSize: AppFontSize.s15,
                              color: AppColor.gray,
                            ),
                          ),
                        ],
                      ),
                      AvatarTravel(avatar: '', name: 'Huy Hiep'),
                    ],
                  ),
                  Gap(24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppSvg.location),
                          Text(' Tekergat'),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(AppSvg.star),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: ' 4.7',
                                  style: TextStyle(color: AppColor.lightText),
                                ),
                                TextSpan(
                                  text: '(2498)',
                                  style: TextStyle(color: AppColor.gray),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '\$59/',
                              style: TextStyle(
                                color: AppColor.primary,
                                fontSize: AppFontSize.s15,
                              ),
                            ),
                            TextSpan(
                              text: 'Person',
                              style: TextStyle(
                                color: AppColor.lightText,
                                fontSize: AppFontSize.s15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Gap(24),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About Destination',
                          style: TextStyle(
                            fontSize: AppFontSize.s20,
                            fontWeight: FontWeight.w600,
                            color: AppColor.lightText,
                          ),
                        ),
                        Gap(8),
                        Text(
                          'You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday to the Greek ETC. You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday to the Greek ETC. You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday to the Greek ETC... Read More You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday to the Greek ETC... Read More You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday to the Greek ETC... Read More You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday to the Greek ETC... Read More',
                          style: TextStyle(
                            fontSize: AppFontSize.s14,
                            color: AppColor.gray,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ButtonTravel(text: 'Book Now').padding(EdgeInsets.only(top: 20)),
        ],
      ),
    ).padding(EdgeInsets.all(20));
  }
}
