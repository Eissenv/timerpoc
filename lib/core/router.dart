import 'package:flutter/material.dart';
import '../features/splash/view/splash_view.dart';
import '../features/timer/view/timer_view.dart';

class AppRoutes {
  static const splash = '/';
  static const timer  = '/timer';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case timer:
        return MaterialPageRoute(builder: (_) => const TimerView());
      default:
        return MaterialPageRoute(builder: (_) => const SplashView());
    }
  }
}
