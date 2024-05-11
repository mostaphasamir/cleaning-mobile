import 'package:flutter/material.dart';

extension SizeExtention on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height - MediaQuery.of(this).viewPadding.top;
  double get screenWidth => MediaQuery.of(this).size.width ;
}