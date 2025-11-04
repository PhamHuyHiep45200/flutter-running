import 'package:flutter/material.dart';
import 'package:working_app/widgets/common/calendar.dart';

class CalendarBottomScreen extends StatefulWidget {
  const CalendarBottomScreen({super.key});

  @override
  State<CalendarBottomScreen> createState() => _CalendarBottomScreenState();
}

class _CalendarBottomScreenState extends State<CalendarBottomScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 40),
      child: CalendarTravel(),
    );
  }
}
