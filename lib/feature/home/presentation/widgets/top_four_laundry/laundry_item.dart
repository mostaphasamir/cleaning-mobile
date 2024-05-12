import 'package:cleaning_mobile/core/helper/custom_image_view.dart';
import 'package:cleaning_mobile/core/style/app_height.dart';
import 'package:cleaning_mobile/core/utils/app_strings.dart';
import 'package:cleaning_mobile/feature/home/presentation/widgets/top_four_laundry/laundry_buttom.dart';
import 'package:cleaning_mobile/generated/app_assets.dart';
import 'package:flutter/cupertino.dart';

class LaundryItem extends StatelessWidget {
  final void Function()? onTap ;
  const LaundryItem({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CustomImageView(
          imagePath: AppAssets.imagesGreateLaundry,
        ),
        Positioned(
          bottom: AppHeight.h8,
          child: LaundryButton(
            text: AppStrings.book,
            onTap: onTap,
          ),
        )
      ],
    );
  }
}
