import 'package:flutter/material.dart';
import '../utils/colors.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final double width;
  final double height;
  final bool filled;

  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.width = 120,
    this.height = 40,
    this.filled = true,
  });

  @override
  Widget build(BuildContext context) {
    final shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(6));

    if (filled) {
      return SizedBox(
        width: width, height: height,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.btnFill,
            shape: shape,
          ),
          child: Text(label, style: const TextStyle(color: Colors.black)),
        ),
      );
    }

    return SizedBox(
      width: width, height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: AppColors.btnReset.shade100,
          shape: shape,
        ),
        child: Text(label, style: const TextStyle(color: Colors.black)),
      ),
    );
  }
}
