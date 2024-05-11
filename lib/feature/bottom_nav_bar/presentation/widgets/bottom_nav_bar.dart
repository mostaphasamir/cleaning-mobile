
import 'package:flutter/material.dart';

import '../../../../core/style/app_height.dart';
import '../../../../core/style/app_radius.dart';
import '../../../../core/style/app_width.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../generated/app_assets.dart';
import 'bottom_nav_bar_item.dart';

class BottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onIndexChange ;
  const BottomNavBar(
      {super.key,
      required this.selectedIndex,
      required this.onIndexChange,
      });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<String> icons = [
    AppAssets.svgHome,
    AppAssets.svgFavorite,
    AppAssets.svgOrder,
    AppAssets.svgChat,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(
          AppRadius.r20,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.withOpacity(0.2,),
            offset: const Offset(0,-10),
            spreadRadius: 20,
            blurRadius: 30,
          )
        ]
      ),
      padding: EdgeInsets.symmetric(
        vertical: AppHeight.h13,
        horizontal: AppWidth.w45,
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            icons.length,
            (index) => BottomNavBarItem(
              svgPath: icons[index],
              isSelected: widget.selectedIndex == index,
              onTap: () {
                widget.onIndexChange.call(index);
              },
            ),
          )),
    );
  }
}
