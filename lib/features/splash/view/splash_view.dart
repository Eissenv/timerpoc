import 'package:flutter/material.dart';
import '../viewmodel/splash_viewmodel.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late final SplashViewModel _vm;

  @override
  void initState() {
    super.initState();
    _vm = SplashViewModel();
    _vm.init(context);
  }

  @override
  void dispose() {
    _vm.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF171916),
      alignment: Alignment.center,
      child: Image.asset(
        'assets/timerlogo.png',
        height: MediaQuery.of(context).size.height * 0.6,
      ),
    );
  }
}
