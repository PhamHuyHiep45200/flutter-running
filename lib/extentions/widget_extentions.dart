import 'package:flutter/material.dart';
import 'package:working_app/consts/colors.dart';

extension WidgetExtensions on Widget {
  Widget onTap(VoidCallback onTab, {BorderRadius? borderRadius}) {
    return InkWell(
      borderRadius: borderRadius ?? BorderRadius.circular(0),
      onTap: onTab,
      child: this,
    );
  }

  Widget padding(EdgeInsetsGeometry value) {
    return Padding(padding: value, child: this);
  }

  Widget center() {
    return Center(child: this);
  }

  Widget expanded({int flex = 1}) {
    return Expanded(flex: flex, child: this);
  }

  Widget align([AlignmentGeometry alignment = Alignment.center]) {
    return Align(alignment: alignment, child: this);
  }

  Widget radius(double radius) {
    return ClipRRect(borderRadius: BorderRadius.circular(radius), child: this);
  }

  Widget color(Color color) {
    return Container(color: color, child: this);
  }

  Widget avatar(String avatar, String? name) {
    return CircleAvatar(
      backgroundImage: avatar.isNotEmpty ? NetworkImage(avatar) : null,
      backgroundColor: avatar.isEmpty
          ? const Color.fromARGB(255, 0, 183, 255)
          : null,
      child: avatar.isEmpty ? Text(name?.substring(0, 1) ?? 'A') : null,
    );
  }

  Widget shadow() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
            color: AppColor.lightText.withOpacity(0.05), // màu bóng
            spreadRadius: 1, // độ lan
            blurRadius: 5, // độ mờ
            offset: Offset(0, 3), // hướng bóng: (x, y)
          ),
        ],
      ),
      child: this,
    );
  }
}
