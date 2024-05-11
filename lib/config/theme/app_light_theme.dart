import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

ThemeData appLightTheme() => ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.white,
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary)
          .copyWith(background: AppColors.white,),
    );
