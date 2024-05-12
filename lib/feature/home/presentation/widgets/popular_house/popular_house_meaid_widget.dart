import 'package:cleaning_mobile/core/style/app_height.dart';
import 'package:cleaning_mobile/feature/home/presentation/widgets/popular_house/popular_house_Item.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cleaning_mobile/core/extentions/extenstions.dart';
import 'package:cleaning_mobile/core/style/app_radius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/helper/custom_image_view.dart';
import '../../../../../core/style/app_width.dart';
import '../../../../../core/utils/app_colors.dart';

class PopularHouseMaidWidget extends StatefulWidget {
  final List<String> images;

  const PopularHouseMaidWidget({super.key, required this.images});

  @override
  State<PopularHouseMaidWidget> createState() => _PopularHouseMaidWidgetState();
}

class _PopularHouseMaidWidgetState extends State<PopularHouseMaidWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      // alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
              aspectRatio: 2.68,
              viewportFraction: 1,
              initialPage: 0,
              reverse: false,
              autoPlay: false,
              autoPlayInterval: const Duration(seconds: 5),
              autoPlayAnimationDuration: const Duration(milliseconds: 1000),
              autoPlayCurve: Curves.linear,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              }),
          items: widget.images.map((String imagePath) {
            return const PopularHouseItem().paddingSymmetric(
              horizontal: AppWidth.w12,
              vertical: AppHeight.h12,
            );
          }).toList(),
        ),
        2.hs,
        AnimatedSmoothIndicator(
          activeIndex: currentIndex,
          count: widget.images.length,
          effect: ExpandingDotsEffect(
            dotWidth: AppRadius.r6,
            dotHeight: AppRadius.r6,
            activeDotColor: AppColors.primary,
            dotColor: AppColors.grey,
          ),
        )
      ],
    );
  }
}
