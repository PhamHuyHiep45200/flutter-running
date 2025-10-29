import 'package:flutter/material.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/font_size.dart';

class InputTravel extends StatefulWidget {
  const InputTravel({super.key});

  @override
  State<InputTravel> createState() => _InputTravelState();
}

class _InputTravelState extends State<InputTravel> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      // obscureText: true,
      style: TextStyle(color: AppColor.lightText, fontSize: AppFontSize.s16),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
        fillColor: AppColor.lightGray,
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 12),
      ),
    );
  }
}
