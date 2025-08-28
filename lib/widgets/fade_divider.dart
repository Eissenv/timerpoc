import 'package:flutter/material.dart';
import '../utils/colors.dart';

class FadeDivider extends StatelessWidget {
  final double height;
  final double radius;
  final EdgeInsetsGeometry margin;

  const FadeDivider({
    super.key,
    this.height = 4,
    this.radius = 10,
    this.margin = const EdgeInsets.symmetric(horizontal: 40),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        gradient: LinearGradient(
          colors: [Colors.transparent, AppColors.line, Colors.transparent],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
    );
  }
}
