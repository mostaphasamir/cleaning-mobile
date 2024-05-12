import 'package:cleaning_mobile/core/extentions/extenstions.dart';
import 'package:cleaning_mobile/core/helper/custom_image_view.dart';
import 'package:cleaning_mobile/core/style/app_height.dart';
import 'package:cleaning_mobile/core/style/app_radius.dart';
import 'package:cleaning_mobile/core/style/app_width.dart';
import 'package:cleaning_mobile/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class DefaultFloatingActionBottom extends StatelessWidget {
  final String imagePath ;
  final void Function()? onTap ;
  const DefaultFloatingActionBottom({super.key, required this.imagePath, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppHeight.h45,),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: AppWidth.w47,
          height: AppWidth.w47,
          padding: 14.paddingAll,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(
              AppRadius.r15,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withOpacity(0.1),
                offset: const Offset(0, 4),
                spreadRadius: 4,
                blurRadius: 8,
              )
            ]
          ),
          child: CustomImageView(
            imagePath: imagePath,
            width: AppWidth.w20,
            height: AppWidth.w20,
          ),
        ),
      ),
    );
  }
}
