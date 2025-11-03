import 'package:flutter/material.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/enum/card.dart';

class CardContainer extends StatefulWidget {
  final CardSize? size;
  final Widget child;
  // final Function? onPress;

  const CardContainer({
    super.key,
    this.size = CardSize.large,
    required this.child,
    // this.onPress,
  });

  @override
  State<CardContainer> createState() => _CardContainerState();
}

class _CardContainerState extends State<CardContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(widget.size == CardSize.large ? 14 : 12),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(
          widget.size == CardSize.large ? 24 : 16,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColor.lightGray.withOpacity(1), // màu bóng
            spreadRadius: 1, // độ lan
            blurRadius: 5, // độ mờ
            offset: Offset(0, 3), // hướng bóng: (x, y)
          ),
        ],
      ),
      child: widget.child,
    );
  }
}
