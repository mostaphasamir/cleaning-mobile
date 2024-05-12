import 'package:cleaning_mobile/core/extentions/extenstions.dart';
import 'package:cleaning_mobile/core/helper/custom_image_view.dart';
import 'package:cleaning_mobile/core/style/app_height.dart';
import 'package:cleaning_mobile/core/style/app_radius.dart';
import 'package:cleaning_mobile/core/style/app_width.dart';
import 'package:cleaning_mobile/core/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../../../core/style/app_text_style.dart';
import '../../../../../generated/app_assets.dart';

class PopularHouseItem extends StatelessWidget {
  const PopularHouseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppHeight.h12,
      ),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(
            AppRadius.r8,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(
                0.25,
              ),
              offset: const Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 0,
            )
          ]),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Row(
            children: [
              15.ws,
              CustomImageView(
                imagePath: AppAssets.imagesLaundry,
              ),
              8.ws,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shruti Kedia",
                      style: AppTextStyle.rubik16darkGrey500,
                    ),
                    3.hs,
                    Text(
                      "Hi my name is Kedia and I m House maid",
                      style: AppTextStyle.rubik12blueGray400,
                    ).paddingRight(
                      AppWidth.w35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RatingBar(
                          itemSize: 16,
                          initialRating:4.0,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 5,
                          ratingWidget: RatingWidget(
                            half: CustomImageView(
                              svgPath: AppAssets.svgStarFull,
                            ),
                            full: CustomImageView(
                              svgPath: AppAssets.svgStarFull,
                            ),
                            empty: CustomImageView(
                              svgPath: AppAssets.svgStarEmpty,
                            ),
                          ),
                          ignoreGestures: true,
                          onRatingUpdate: (rating) {

                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // 11.ws,
              9.ws,
            ],
          ),
          Positioned(
            right: AppWidth.w8,
            top: AppHeight.h6,
            child: CustomImageView(
              svgPath: AppAssets.svgLike,
            ),
          ),
        ],
      ),
    );
  }
}
