import 'dart:async';

import 'package:flutter/material.dart';

class DetailTravelScreen extends StatefulWidget {
  const DetailTravelScreen({super.key});

  @override
  State<DetailTravelScreen> createState() => _DetailTravelScreenState();
}

class _DetailTravelScreenState extends State<DetailTravelScreen> {
  final List<int> thumbnails = [1, 2, 3];
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 2), (Timer timer) {
      pageController.nextPage(
        duration: Duration(milliseconds: 400),
        curve: Curves.ease,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: thumbnails
                .map(
                  (e) => SizedBox(
                    child: Image.network(
                      'https://images.baodantoc.vn/uploads/2023/Thang-10/Ngay-13/Truong-Thuan/1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
                .toList(),
          ),
          Positioned(child: Container()),
        ],
      ),
    );
  }
}
