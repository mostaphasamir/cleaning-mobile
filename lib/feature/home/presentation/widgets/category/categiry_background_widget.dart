import 'package:cleaning_mobile/core/extentions/size_extention.dart';
import 'package:cleaning_mobile/core/helper/custom_image_view.dart';
import 'package:cleaning_mobile/generated/app_assets.dart';
import 'package:flutter/cupertino.dart';

class CategoryBackGroundWidget extends StatelessWidget {
  final Widget body;

  const CategoryBackGroundWidget({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: context.screenHeight,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: CustomImageView(
              svgPath: AppAssets.svgCategoriesBubbles,
            ),
          ),
          body,
        ],
      ),
    );
  }
}
