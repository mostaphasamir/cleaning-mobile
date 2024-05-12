import 'package:cleaning_mobile/core/style/app_height.dart';
import 'package:cleaning_mobile/core/style/app_radius.dart';
import 'package:cleaning_mobile/core/style/app_text_style.dart';
import 'package:cleaning_mobile/core/style/app_width.dart';
import 'package:cleaning_mobile/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class LaundryButton extends StatelessWidget {
  final String text;

  final void Function()? onTap;

  const LaundryButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: AppHeight.h6,horizontal: AppWidth.w25),
        decoration: BoxDecoration(
          color: AppColors.bottom,
          borderRadius: BorderRadius.circular(
            AppRadius.r10,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: AppTextStyle.rubik24white600,
        ),
      ),
    );
  }
}
