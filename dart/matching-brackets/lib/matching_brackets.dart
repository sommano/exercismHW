class MatchingBrackets {
Map<String, String> m = Map.fromEntries([
    MapEntry(')', '('),
    MapEntry('}', '{'),
    MapEntry(']', '[')
  ]);

  bool isPaired(String s) {
    List<String> open = [];
    for (var i = 0; i < s.length; i++) {
      if (m.values.contains(s[i])) open.add(s[i]);
      else if (m.keys.contains(s[i])) {
        if (open.isNotEmpty && open.last == m[s[i]]) open.removeLast();
        else return false;
      }
    }
    return open.isEmpty;
  }
}
