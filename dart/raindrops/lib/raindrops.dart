class Raindrops {
String convert(int given) {
    StringBuffer out = new StringBuffer("");

    (given%3 == 0) ? out.write("Pling") : out.write("");
    (given%5 == 0) ? out.write("Plang") : out.write("");
    (given%7 == 0) ? out.write("Plong") : out.write("");
    (given%3 != 0 && given%5 != 0 && given%7 != 0) ? out.write(given) : out.write("");

    return out.toString();
  }
}
