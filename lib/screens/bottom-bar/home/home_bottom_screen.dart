import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/font_size.dart';
import 'package:working_app/widgets/common/card_container.dart';
import 'package:working_app/widgets/home/card_best_destination.dart';

class HomeBottomScreen extends StatefulWidget {
  const HomeBottomScreen({super.key});

  @override
  State<HomeBottomScreen> createState() => _HomeBottomScreenState();
}

class _HomeBottomScreenState extends State<HomeBottomScreen> {
  final List<int> destinations = [1, 2, 3, 4, 5];
  final pageController = PageController(viewportFraction: 0.8);
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
            SizedBox(
              height: 384,
              child: PageView(
                controller: pageController,

                children: destinations
                    .map(
                      (e) => Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: CardContainer(child: CardBestDestination()),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
