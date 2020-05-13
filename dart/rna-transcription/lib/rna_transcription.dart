class RnaTranscription {
  String toRna(String dna) {
    RegExp exp = new RegExp(r"[^ACGT]");
    RegExpMatch check = exp.firstMatch(dna);
    if (check == null) {
      Map<String, String> transcript = {"G": "C", "C": "G", "T": "A", "A": "U"};
      String decode = dna.split("").map((f) => transcript[f]).toList().join("");
      return decode;
    } else
      throw ArgumentError('Incorrect DNA');
  }}
