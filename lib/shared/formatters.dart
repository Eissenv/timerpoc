class Formatters {
  static String mmSs(int seconds) {
    final m = (seconds ~/ 60).toString();
    final ss = (seconds % 60).toString().padLeft(2, '0');
    return '$m:$ss';
  }
}
