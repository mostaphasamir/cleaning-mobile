import 'package:cleaning_mobile/core/extentions/size_extention.dart';
import 'package:cleaning_mobile/core/helper/custom_image_view.dart';
import 'package:cleaning_mobile/core/style/app_height.dart';
import 'package:cleaning_mobile/generated/app_assets.dart';
import 'package:flutter/cupertino.dart';

class BodyWithBackGround extends StatelessWidget {
  final Widget body;

  const BodyWithBackGround({super.key, required this.body});

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
              svgPath: AppAssets.svgBubbles,
            ),
          ),
          Positioned(
            top: context.screenHeight * 0.5,
            child: CustomImageView(
              svgPath: AppAssets.svgBubble2,
            ),
          ),
          body,
        ],
      ),
    );
  }
}
