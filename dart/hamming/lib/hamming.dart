class Hamming {
  int distance(String str1, String str2) {
    int count = 0;
    int i;
    for (i = 0; i < str1.length; i++) {
      if (str1[i] != str2[i]) count++;
    }
    return count;
  }
}
