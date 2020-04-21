class Darts {
  int score(double x, double y) {
    double dist = sqrt(pow(x, 2) + pow(y, 2));

    if (dist <= 1) return 10;
    if (dist <= 5) return 5;
    if (dist <= 10) return 1;
    return 0;
  }
}
