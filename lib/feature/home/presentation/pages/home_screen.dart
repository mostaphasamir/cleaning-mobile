import 'package:flutter/material.dart';

import '../widgets/body_with_back_ground.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyWithBackGround(
        body: SizedBox(),
      ),
    );
  }
}
