import 'package:cleaning_mobile/core/extentions/extenstions.dart';
import 'package:cleaning_mobile/core/extentions/padding_extention.dart';
import 'package:cleaning_mobile/core/extentions/size_extention.dart';
import 'package:cleaning_mobile/core/style/app_text_style.dart';
import 'package:cleaning_mobile/core/style/app_width.dart';
import 'package:cleaning_mobile/core/utils/app_strings.dart';
import 'package:cleaning_mobile/generated/app_assets.dart';
import 'package:flutter/material.dart';

import '../widgets/body_with_back_ground.dart';
import '../widgets/offer_curosel_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyWithBackGround(
        body: ListView(
          children: [
            (context.screenHeight * 0.2).hs,
            Text(
              "${AppStrings.hi} Ali, ${AppStrings.whichServiceDoYouNeed}",
              style: AppTextStyle.rubik20darkGrey500,
            ).paddingHorizontal(
              AppWidth.w32,
            ),
            19.hs,
            //change this to the image you want
            const HomeOfferCarousel(
              images: [
                AppAssets.imagesOffer,
                AppAssets.imagesOffer,
                AppAssets.imagesOffer,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
