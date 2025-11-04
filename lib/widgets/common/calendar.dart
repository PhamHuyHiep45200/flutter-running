import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/font_size.dart';
import 'package:working_app/consts/svg.dart';
import 'package:working_app/extentions/widget_extentions.dart';
import 'package:working_app/widgets/common/card_container.dart';

class CalendarTravel extends StatefulWidget {
  const CalendarTravel({super.key});

  @override
  State<CalendarTravel> createState() => _CalendarTravelState();
}

class _CalendarTravelState extends State<CalendarTravel> {
    late DateTime _selectedDate = DateTime.now();
  final List<String> dateWeekConvert = ['', 'M', 'T', 'W', 'T', 'F', 'S', 'S'];
  final List<String> dateMonthConvert = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  EasyDatePickerController controller = EasyDatePickerController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return CardContainer(
      child: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primary),
        ),
        child: EasyDateTimeLinePicker.itemBuilder(
          firstDate: DateTime(2025, 1, 1),
          lastDate: DateTime(2030, 3, 18),
          focusedDate: _selectedDate,
          itemExtent: 64.0,
          controller: controller,
          headerOptions: HeaderOptions(
            headerBuilder: (context, date, onTap) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: onTap,
                    child: Text(
                      '${date.month.toString()} ${dateMonthConvert[date.month - 1]}',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColor.lightText,
                        fontWeight: FontWeight.w600,
                      ),
                    ).padding(EdgeInsets.only(left: 10)),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(AppSvg.arrow).onTap(() {
                        setState(() {
                          _selectedDate = date.subtract(Duration(days: 1));
                        });
                        controller.animateToDate(_selectedDate);
                      }),
                      Transform.rotate(
                        angle: 3.1416,
                        child: SvgPicture.asset(AppSvg.arrow).onTap(() {
                          setState(() {
                            _selectedDate = date.add(Duration(days: 1));
                          });
                          controller.animateToDate(_selectedDate);
                        }),
                      ),
                    ],
                  ).padding(EdgeInsets.only(right: 10)),
                ],
              ).padding(EdgeInsets.only(bottom: 10));
            },
          ),
          itemBuilder: (context, date, isSelected, isDisabled, isToday, onTap) {
            return Container(
              height: 76,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: isSelected ? AppColor.primary : Colors.transparent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    dateWeekConvert[date.weekday],
                    style: TextStyle(
                      color: isSelected ? AppColor.lightGray : AppColor.gray,
                      fontSize: AppFontSize.s15,
                    ),
                  ),
                  Gap(12),
                  Text(
                    date.day.toString(),
                    style: TextStyle(
                      color: isSelected ? AppColor.white : AppColor.lightText,
                      fontSize: AppFontSize.s16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ).onTap(() {
              onTap();
            });
          },
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
