class Bob {
  String response(String sentence) {
    final String trimmedSentence = sentence.trim();
    if (trimmedSentence.isEmpty) return "Fine. Be that way!";
    if (isUpper(trimmedSentence) && trimmedSentence.endsWith("?")) return "Calm down, I know what I'm doing!";
    if (isUpper(trimmedSentence)) return "Whoa, chill out!";
    if (trimmedSentence.endsWith("?")) return "Sure.";
    return "Whatever.";
  }

  static bool isLetter(String char) => new RegExp(r'[a-zA-Z]').hasMatch(char);
  static bool isUpper(String s) => s.split('').any(isLetter) && s == s.toUpperCase();

}
