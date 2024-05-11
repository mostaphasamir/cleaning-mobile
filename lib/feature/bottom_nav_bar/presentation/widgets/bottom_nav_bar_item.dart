import 'package:cleaning_mobile/core/extentions/extenstions.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/helper/custom_image_view.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../generated/app_assets.dart';

class BottomNavBarItem extends StatelessWidget {
  final String svgPath ;
  final void Function()? onTap ;
  final bool isSelected ;
  const BottomNavBarItem({super.key, required this.svgPath, this.onTap, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: 14.paddingAll ,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary:AppColors.white,
          shape: BoxShape.circle,
        ),
        child: CustomImageView(
          svgPath: svgPath,
          color: isSelected ? AppColors.white: AppColors.grey,
        ),
      ),
    );
  }
}
