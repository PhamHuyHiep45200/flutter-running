import 'package:flutter/material.dart';
import 'package:working_app/widgets/guid/guid_item.dart';

class TourGuidPage extends StatefulWidget {
  const TourGuidPage({super.key});

  @override
  State<TourGuidPage> createState() => _TourGuidPageState();
}

class _TourGuidPageState extends State<TourGuidPage> {
  PageController controller = PageController();
  static List<String> thumbnails = [
    'https://media-cdn-v2.laodong.vn/storage/newsportal/2024/12/31/1443462/Lolochai_Hagiang-9.jpg',
    'https://booking.dulichthiennhien.vn/Data/image/H%C3%8CNH%20WEB/MI%E1%BB%80N%20B%E1%BA%AEC/H%C3%80%20GIANG.jpg',
    'https://images.baodantoc.vn/uploads/2023/Thang-10/Ngay-13/Truong-Thuan/1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: thumbnails.map((e) => GuidItem(thumbnail: e)).toList(),
    );
  }
}
