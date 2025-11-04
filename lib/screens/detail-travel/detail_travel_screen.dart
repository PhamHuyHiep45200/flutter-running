import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/font_size.dart';
import 'package:working_app/extentions/widget_extentions.dart';
import 'package:working_app/widgets/common/app_bar.dart';
import 'package:working_app/widgets/common/button.dart';
import 'package:working_app/widgets/detail-travel/detail_travel.dart';

class DetailTravelScreen extends StatefulWidget {
  const DetailTravelScreen({super.key});

  @override
  State<DetailTravelScreen> createState() => _DetailTravelScreenState();
}

class _DetailTravelScreenState extends State<DetailTravelScreen> {
  final List<int> thumbnails = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(top: 40, child: AppBarTravel()),
          CarouselSlider(
            items: thumbnails
                .map(
                  (e) => SizedBox(
                    child: Image.network(
                      'https://images.baodantoc.vn/uploads/2023/Thang-10/Ngay-13/Truong-Thuan/1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
                .toList(),
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 6),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.ease,
              scrollDirection: Axis.horizontal,
              viewportFraction: 1,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColor.lightText.withOpacity(1),
                    AppColor.lightText.withOpacity(0.2),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Niladri Reservoir',
                        style: TextStyle(
                          color: AppColor.lightGray,
                          fontWeight: FontWeight.w600,
                          fontSize: AppFontSize.s16,
                        ),
                      ).align(Alignment.topLeft),
                      Text(
                        'You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday to the Greek ETC...',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: AppColor.lightGray),
                      ).align(Alignment.topLeft),
                    ],
                  ),
                  ButtonTravel(text: 'Explore').onTap(() {
                    showModalBottomSheet<void>(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return DetailTravel();
                      },
                    );
                  }),
                ],
              ).padding(EdgeInsets.fromLTRB(20, 10, 20, 40)),
            ),
          ),
        ],
      ),
    );
  }
}
