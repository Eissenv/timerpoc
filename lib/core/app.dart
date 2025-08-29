import 'package:flutter/material.dart';
import 'router.dart';
import 'theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timer',
      theme: buildTheme(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      initialRoute: AppRoutes.splash,
      debugShowCheckedModeBanner: false,
    );
  }
}
