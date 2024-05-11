import 'package:cleaning_mobile/feature/chat/presentation/pages/chat_screen.dart';
import 'package:cleaning_mobile/feature/favorite/presentation/pages/favorite_screen.dart';
import 'package:cleaning_mobile/feature/home/presentation/pages/home_screen.dart';
import 'package:cleaning_mobile/feature/order/presentation/pages/order_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: [
        HomeScreen(),
        FavoriteScreen(),
        OrderScreen(),
        ChatScreen(),
      ][pageIndex],
      bottomSheet: BottomNavBar(
        selectedIndex: pageIndex,
        onIndexChange: (int index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}
