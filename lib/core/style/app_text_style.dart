import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class AppTextStyle {
  static TextStyle fontSize8 = TextStyle(fontSize: 8.sp);
  static TextStyle fontSize10 = TextStyle(fontSize: 10.sp);
  static TextStyle fontSize11 = TextStyle(fontSize: 11.sp);
  static TextStyle fontSize12 = TextStyle(fontSize: 12.sp);
  static TextStyle fontSize14 = TextStyle(fontSize: 14.sp);
  static TextStyle fontSize16 = TextStyle(fontSize: 16.sp);
  static TextStyle fontSize18 = TextStyle(fontSize: 18.sp);
  static TextStyle fontSize20 = TextStyle(fontSize: 20.sp);
  static TextStyle fontSize22 = TextStyle(fontSize: 22.sp);
  static TextStyle fontSize24 = TextStyle(fontSize: 24.sp);
  static TextStyle fontSize25 = TextStyle(fontSize: 25.sp);
  static TextStyle fontSize28 = TextStyle(fontSize: 28.sp);
  static TextStyle fontSize33 = TextStyle(fontSize: 33.sp);

  ///FontWeight
  static const TextStyle fontWeight300 = TextStyle(fontWeight: FontWeight.w300);
  static const TextStyle fontWeight400 = TextStyle(fontWeight: FontWeight.w400);
  static const TextStyle fontWeight500 = TextStyle(fontWeight: FontWeight.w500);
  static const TextStyle fontWeight600 = TextStyle(fontWeight: FontWeight.w600);
  static const TextStyle fontWeight700 = TextStyle(fontWeight: FontWeight.w700);

  ///font family

  static const TextStyle fontRubik = TextStyle(fontFamily: "Rubik");


  static TextStyle get rubik24white600 => fontRubik
      .merge(fontWeight600)
      .merge(fontSize24)
      .copyWith(color: AppColors.white);

  static TextStyle get rubik24black700 => fontRubik
      .merge(fontWeight700)
      .merge(fontSize24)
      .copyWith(color: AppColors.black);


  static TextStyle get rubik20darkBlue500 => fontRubik
      .merge(fontWeight600)
      .merge(fontSize20)
      .copyWith(color: AppColors.darkBlue);

  static TextStyle get rubik18darkGrey500 => fontRubik
      .merge(fontWeight600)
      .merge(fontSize18)
      .copyWith(color: AppColors.darkGrey);



  static TextStyle get rubik16darkGrey500 => fontRubik
      .merge(fontWeight600)
      .merge(fontSize16)
      .copyWith(color: AppColors.darkGrey);

  static TextStyle get rubik12blueGray300 => fontRubik
      .merge(fontWeight300)
      .merge(fontSize12)
      .copyWith(color: AppColors.blueGray);

  static TextStyle get rubik12blueGray400 => fontRubik
      .merge(fontWeight400)
      .merge(fontSize12)
      .copyWith(color: AppColors.blueGray);

  static TextStyle get rubik12darkGrey400 => fontRubik
      .merge(fontWeight400)
      .merge(fontSize12)
      .copyWith(color: AppColors.darkGrey);



  static TextStyle get rubik9green400 => fontRubik
      .merge(fontWeight400)
      .merge(fontSize8)
      .copyWith(color: AppColors.green);

  static TextStyle get rubik9blueGray300 => fontRubik
      .merge(fontWeight300)
      .merge(fontSize8)
      .copyWith(color: AppColors.blueGray);

  static TextStyle get rubik8black400 => fontRubik
      .merge(fontWeight400)
      .merge(fontSize8)
      .copyWith(color: AppColors.black);
}
