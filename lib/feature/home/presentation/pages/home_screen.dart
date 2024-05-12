import 'package:cleaning_mobile/core/extentions/extenstions.dart';
import 'package:cleaning_mobile/core/extentions/padding_extention.dart';
import 'package:cleaning_mobile/core/extentions/size_extention.dart';
import 'package:cleaning_mobile/core/style/app_height.dart';
import 'package:cleaning_mobile/core/style/app_text_style.dart';
import 'package:cleaning_mobile/core/style/app_width.dart';
import 'package:cleaning_mobile/core/utils/app_strings.dart';
import 'package:cleaning_mobile/generated/app_assets.dart';
import 'package:flutter/material.dart';

import '../widgets/body_with_back_ground.dart';
import '../widgets/category_widget.dart';
import '../widgets/feature_nurses/feature_nurses_item.dart';
import '../widgets/offer_curosel_widget.dart';
import '../widgets/popular_house/popular_house_meaid_widget.dart';
import '../widgets/see_all_widget.dart';

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
              style: AppTextStyle.rubik20darkBlue500,
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
            15.hs,
            SeeAllWidget(
              title: AppStrings.categories,
              onTap: () {
                //TODO navigate to categories scree
              },
            ),
            15.hs,
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              runSpacing: AppHeight.h11,
              children: List.generate(
                6,
                (index) => const CategoryWidget(
                  imagePath: AppAssets.imagesCategoryServices,
                  title: "Maid",
                ),
              ),
            ).paddingHorizontal(
              AppWidth.w21,
            ),
            21.hs,
            SeeAllWidget(
              title: AppStrings.popularHouseMaid,
              onTap: () {
                //TODO navigate to popular house madi
              },
            ),
            const PopularHouseMaidWidget(
              images: [
                AppAssets.imagesLaundry,
                AppAssets.imagesLaundry,
                AppAssets.imagesLaundry,
                AppAssets.imagesLaundry,
              ],
            ),
            21.hs,
            SeeAllWidget(
              title: AppStrings.featureNurses,
              onTap: () {
                //TODO navigate to feature Nurses
              },
            ),
            14.hs,
            SizedBox(
              height: AppHeight.h140,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(
                  horizontal: AppWidth.w22,
                  vertical: AppHeight.h5,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => FeatureNursesItem(
                  isLike: index % 2 == 0,
                  rate: 3.7,
                  name: 'Dr. Strain',
                ),
                separatorBuilder: (context, index) => 12.ws,
                itemCount: 10,
              ),
            ),
            (context.screenHeight * 0.08).hs,
          ],
        ),
      ),
    );
  }
}
