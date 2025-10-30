import 'package:flutter/material.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/font_size.dart';

class InputTravel extends StatefulWidget {
  final bool? obscureText;
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const InputTravel({
    super.key,
    this.obscureText,
    this.hintText,
    this.controller,
    this.validator,
  });

  @override
  State<InputTravel> createState() => _InputTravelState();
}

class _InputTravelState extends State<InputTravel> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.obscureText ?? false,
      style: TextStyle(color: AppColor.lightText, fontSize: AppFontSize.s16),
      decoration: InputDecoration(
        hintText: widget.hintText,
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
