class Anagram {
  List<String> findAnagrams(String word, List<String> cadinates) {
    var result = new List<String>();

    for (final cadinate in cadinates) {
      if (word.length == cadinate.length &&
          isAnagram(word.toLowerCase(), cadinate.toLowerCase())) {
        result.add(cadinate);
      }
    }

    return result;
  }

  bool isAnagram(String word, String cadinate) {
    if (word == cadinate) {
      return false;
    }

    var cadinateRunes = cadinate.runes.toList();
    word.runes.forEach((char) => cadinateRunes.remove(char));

    return cadinateRunes.length == 0;
  }
}
