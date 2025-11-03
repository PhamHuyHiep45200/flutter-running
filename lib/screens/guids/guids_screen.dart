import 'package:flutter/material.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/widgets/guid/tour_guid.dart';

class GuidTour extends StatefulWidget {
  const GuidTour({super.key});

  @override
  State<GuidTour> createState() => _GuidTourState();
}

class _GuidTourState extends State<GuidTour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColor.white, body: TourGuidPage());
  }
}
