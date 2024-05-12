import 'package:cleaning_mobile/core/extentions/extenstions.dart';
import 'package:cleaning_mobile/core/extentions/padding_extention.dart';
import 'package:cleaning_mobile/core/helper/custom_image_view.dart';
import 'package:cleaning_mobile/core/style/app_text_style.dart';
import 'package:cleaning_mobile/core/style/app_width.dart';
import 'package:cleaning_mobile/generated/app_assets.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/utils/app_strings.dart';

class SeeAllWidget extends StatelessWidget {
  final String title ;
  final void Function()? onTap ;
  const SeeAllWidget({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: AppTextStyle.rubik18darkGrey500,),
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Text(AppStrings.seeAll,style: AppTextStyle.rubik12blueGray300,),
              2.ws,
              CustomImageView(
                svgPath: AppAssets.svgMore,
              ),
            ],
          ),
        ),
      ],
    ).paddingHorizontal(AppWidth.w19);
  }
}
