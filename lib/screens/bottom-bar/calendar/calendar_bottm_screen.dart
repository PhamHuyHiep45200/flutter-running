import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/font_size.dart';
import 'package:working_app/widgets/common/calendar.dart';
import 'package:working_app/widgets/schedule/card_schedule.dart';

class CalendarBottomScreen extends StatefulWidget {
  const CalendarBottomScreen({super.key});

  @override
  State<CalendarBottomScreen> createState() => _CalendarBottomScreenState();
}

class _CalendarBottomScreenState extends State<CalendarBottomScreen> {
  final List<int> list = [1, 2, 3];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          CalendarTravel(),
          Gap(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Schedule',
                style: TextStyle(
                  color: AppColor.lightText,
                  fontSize: AppFontSize.s20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'View all',
                style: TextStyle(
                  color: AppColor.primary,
                  fontSize: AppFontSize.s14,
                ),
              ),
            ],
          ),
          Gap(16),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: GridView.count(
              crossAxisCount: 1,
              crossAxisSpacing: 16,
              children: list.map((e) => CardSchedule()).toList(),
            ),
          ),
          // CardSchedule(),
          // CardSchedule(),
          // CardSchedule(),
          // CardSchedule(),
        ],
      ),
    );
  }
}
