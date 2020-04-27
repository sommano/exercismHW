class Isogram {
  bool isIsogram(String input) {
    String filtered = input.toLowerCase().replaceAll(RegExp(r'[^\w]'), '');
    return Set<String>.from(filtered.split('')).length == filtered.length;
  }

}
