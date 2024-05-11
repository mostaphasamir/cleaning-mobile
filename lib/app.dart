import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/theme/app_light_theme.dart';
import 'feature/bottom_nav_bar/presentation/pages/bottom_nav_bar_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Cleaning Mobile',
          theme: appLightTheme(),
          home: const BottomNavBarScreen(),
        );
      },
    );


  }
}
