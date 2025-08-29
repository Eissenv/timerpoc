import 'dart:async';
import 'package:flutter/material.dart';
import '../core/router.dart';

class SplashViewModel {
  Timer? _timer;

  void init(BuildContext context) {
    _timer = Timer(const Duration(seconds: 3), () {
      if (!context.mounted) return;
      Navigator.of(context).pushReplacementNamed(AppRoutes.timer);
    });
  }

  void dispose() {
    _timer?.cancel();
  }
}
