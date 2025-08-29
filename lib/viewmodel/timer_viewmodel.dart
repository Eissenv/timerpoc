import 'dart:async';
import 'package:flutter/foundation.dart';
import '../model/timer_state.dart';
import '../view/timer/ticker.dart';

class TimerViewModel extends ChangeNotifier {
  final Ticker _ticker;
  TimerState _state = TimerState.initial;
  StreamSubscription<int>? _sub;

  TimerViewModel(this._ticker);

  TimerState get state => _state;

  void start() {
    if (_state.isRunning) return;
    _sub = _ticker.tick().listen((_) {
      _state = _state.copyWith(seconds: _state.seconds + 1);
      notifyListeners();
    });
    _state = _state.copyWith(isRunning: true);
    notifyListeners();
  }

  void stop() {
    _sub?.cancel();
    _sub = null;
    if (_state.isRunning) {
      _state = _state.copyWith(isRunning: false);
      notifyListeners();
    }
  }

  void reset() {
    stop();
    _state = _state.copyWith(seconds: 0);
    notifyListeners();
  }

  String format() {
    final m = (_state.seconds ~/ 60).toString();
    final ss = (_state.seconds % 60).toString().padLeft(2, '0');
    return '$m:$ss';
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }
}
