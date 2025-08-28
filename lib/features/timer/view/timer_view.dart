import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/fade_divider.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/gap.dart';
import '../../timer/viewmodel/timer_viewmodel.dart';
import '../../timer/services/ticker.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TimerViewModel(Ticker()),
      child: Consumer<TimerViewModel>(
        builder: (context, vm, _) {
          return Scaffold(
            backgroundColor: AppColors.background,
            appBar: AppBar(backgroundColor: AppColors.background),
            body: Column(
              children: [
                Expanded(
                  child: Align(
                    alignment: const Alignment(0, -0.4),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(vm.format(), style: AppTextStyles.displayTimer),
                        const Gap.h(20),
                        const FadeDivider(height: 4, margin: EdgeInsets.symmetric(horizontal: 30)),
                        const Gap.h(30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppButton(
                              label: vm.state.isRunning ? 'STOP' : 'START',
                              onPressed: vm.state.isRunning ? vm.stop : vm.start,
                              width: 120, height: 40, filled: true,
                            ),
                            const Gap.w(50),
                            AppButton(
                              label: 'RESET',
                              onPressed: vm.reset,
                              width: 120, height: 40, filled: false,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text('Timer', style: AppTextStyles.label),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
