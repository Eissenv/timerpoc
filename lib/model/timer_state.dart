class TimerState {
  final int seconds;
  final bool isRunning;

  const TimerState({required this.seconds, required this.isRunning});

  TimerState copyWith({int? seconds, bool? isRunning}) {
    return TimerState(
      seconds: seconds ?? this.seconds,
      isRunning: isRunning ?? this.isRunning,
    );
  }

  static const initial = TimerState(seconds: 0, isRunning: false);
}
