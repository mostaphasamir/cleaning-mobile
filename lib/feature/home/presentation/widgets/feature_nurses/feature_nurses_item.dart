import 'dart:ffi';

import 'package:cleaning_mobile/core/extentions/extenstions.dart';
import 'package:cleaning_mobile/core/helper/custom_image_view.dart';
import 'package:cleaning_mobile/core/style/app_height.dart';
import 'package:cleaning_mobile/core/style/app_radius.dart';
import 'package:cleaning_mobile/core/style/app_text_style.dart';
import 'package:cleaning_mobile/core/style/app_width.dart';
import 'package:cleaning_mobile/core/utils/app_colors.dart';
import 'package:cleaning_mobile/core/utils/app_strings.dart';
import 'package:cleaning_mobile/generated/app_assets.dart';
import 'package:flutter/cupertino.dart';

class FeatureNursesItem extends StatelessWidget {
  final bool isLike;
  final double rate;
  final String name;

  const FeatureNursesItem(
      {super.key,
      required this.isLike,
      required this.rate,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppWidth.w96,
      padding: EdgeInsets.symmetric(
        vertical: AppHeight.h8,
        horizontal: AppWidth.w10,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(
          AppRadius.r6,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.15),
            offset: const Offset(0, 2),
            spreadRadius: 0 ,
            blurRadius: 4,
          )
        ]
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomImageView(
                width: AppWidth.w10,
                height: AppHeight.h8,
                svgPath: isLike ? AppAssets.svgLike : AppAssets.svgEmptyLike,
              ),
              const Spacer(),
              CustomImageView(
                svgPath: AppAssets.svgRate,
              ),
              6.ws,
              Text(
                "$rate",
                style: AppTextStyle.rubik8black400,
              ),
            ],
          ),
          8.hs,
          CustomImageView(
            imagePath: AppAssets.imagesDoctor,
          ),
          10.hs,
          Text(
            name,
            style: AppTextStyle.rubik12darkGrey400,
          ),
          3.hs,
          Row(
            children: [
              Text(
                "\$",
                style: AppTextStyle.rubik9green400,
              ),
              Text(
                " 500.00/${AppStrings.month}",
                style: AppTextStyle.rubik9blueGray300,
              )
            ],
          ),
        ],
      ),
    );
  }
}
