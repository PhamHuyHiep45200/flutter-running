import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:working_app/consts/colors.dart';

class CalendarBottomScreen extends StatefulWidget {
  const CalendarBottomScreen({super.key});

  @override
  State<CalendarBottomScreen> createState() => _CalendarBottomScreenState();
}

class _CalendarBottomScreenState extends State<CalendarBottomScreen> {
  late DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: EasyTheme(
        data: EasyTheme.of(context).copyWith(
          currentDayBorder: WidgetStatePropertyAll(
            BorderSide(color: AppColor.primary),
          ),
          currentDayBackgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return AppColor.primary;
            } else {
              return AppColor.white;
            }
          }),
          dayBorder: WidgetStatePropertyAll(
            BorderSide(color: Colors.transparent),
          ),
          dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return AppColor.primary;
            } else if (states.contains(WidgetState.disabled)) {
              return Colors.white;
            }
            return Colors.white;
          }),
        ),
        child: EasyDateTimeLinePicker(
          firstDate: DateTime(2025, 1, 1),
          lastDate: DateTime(2030, 3, 18),
          focusedDate: _selectedDate,
          onDateChange: (date) {
            setState(() {
              _selectedDate = date;
            });
          },
        ),
      ),
    );
  }
}
