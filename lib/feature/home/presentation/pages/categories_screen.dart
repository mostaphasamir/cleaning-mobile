import 'package:cleaning_mobile/core/extentions/extenstions.dart';
import 'package:cleaning_mobile/core/style/app_height.dart';
import 'package:cleaning_mobile/core/style/app_text_style.dart';
import 'package:cleaning_mobile/core/style/app_width.dart';
import 'package:cleaning_mobile/core/utils/app_strings.dart';
import 'package:cleaning_mobile/shared/presentation/widgets/floating_action_bottom/default_floating_action_bottom.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../../generated/app_assets.dart';
import '../widgets/category/categiry_background_widget.dart';
import '../widgets/category/category_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CategoryBackGroundWidget(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppStrings.categories,
              style: AppTextStyle.rubik24black700,
            ),
            61.hs,
            SizedBox(
              width: double.infinity,
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                runSpacing: AppHeight.h21,
                children: List.generate(
                  9,
                  (index) => const CategoryWidget(
                    imagePath: AppAssets.imagesCategoryServices,
                    title: "Maid",
                  ),
                ),
              ),
            )
          ],
        ).paddingSymmetric(
          horizontal: AppWidth.w22,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,

      floatingActionButton: DefaultFloatingActionBottom(
        onTap: () {
          Navigator.pop(context);
        },
        imagePath: AppAssets.pngBack,
      ),
    );
  }
}
