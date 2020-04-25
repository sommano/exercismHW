class Gigasecond {
  final gigasecond = 1000000000;
  static final duration = new Duration(seconds: gigasecond);

  DateTime add(DateTime birthDate) {
    return birthDate.add(duration);
  }
}
