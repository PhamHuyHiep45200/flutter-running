import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:working_app/consts/colors.dart';
import 'package:working_app/consts/font_size.dart';
import 'package:working_app/consts/router.dart';
import 'package:working_app/widgets/common/button.dart';
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
  int paginationActive = 0;
  Map<int, double> get widthPagination {
    List<int> paginationFilter = thumbnails
        .asMap()
        .keys
        .toList()
        .where((x) => x != paginationActive)
        .toList();
    Map<int, double> result = {
      for (var e in paginationFilter.asMap().entries)
        e.value: (6 * e.key + 8).toDouble(),
    };
    return {...result, paginationActive: 35.0};
  }

  Future<dynamic> handleNext() {
    if (paginationActive == 2) {
      return Navigator.pushNamed(context, AppScreen.login);
    }
    return controller.nextPage(
      duration: Duration(milliseconds: 400),
      curve: Curves.ease,
    );
  }

  void handleSkip() {
    // handle skip guid
    Navigator.pushNamed(context, AppScreen.login);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              PageView(
                onPageChanged: (value) {
                  setState(() {
                    paginationActive = value;
                  });
                },
                controller: controller,
                scrollDirection: Axis.horizontal,
                children: thumbnails
                    .map((e) => GuidItem(thumbnail: e))
                    .toList(),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.08,
                right: 20,
                child: InkWell(
                  onTap: handleSkip,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: AppFontSize.s14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Gap(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 4,
                children: thumbnails
                    .asMap()
                    .entries
                    .map(
                      (e) => AnimatedContainer(
                        duration: Duration(milliseconds: 400),
                        height: 7,
                        width: widthPagination[e.key],
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: e.key == paginationActive
                              ? AppColor.primary
                              : AppColor.gray,
                        ),
                      ),
                    )
                    .toList(),
              ),
              Gap(25),
              ButtonTravel(text: 'Next', onPress: handleNext),
              Gap(25),
            ],
          ),
        ),
      ],
    );
  }
}
