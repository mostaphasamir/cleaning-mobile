
import 'package:cleaning_mobile/core/extentions/extenstions.dart';
import 'package:cleaning_mobile/core/helper/custom_image_view.dart';
import 'package:cleaning_mobile/core/style/app_height.dart';
import 'package:cleaning_mobile/core/style/app_text_style.dart';
import 'package:cleaning_mobile/core/style/app_width.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String imagePath ;
  final String title ;
  final void Function()? onTap ;
  const CategoryWidget({super.key, required this.imagePath, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CustomImageView(
            width: AppWidth.w96,
            height: AppHeight.h88,
            imagePath:  imagePath,
          ),
          11.hs,
          Text(title,style: AppTextStyle.rubik12blueGray400,),
        ],
      ),
    );
  }
}
