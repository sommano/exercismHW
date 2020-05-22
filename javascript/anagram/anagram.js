var anagram = function(word) {

  var find_anagrams = function(possible_anagrams) {

    // fails second last test

    var true_anagarams = [];

    if (possible_anagrams.constructor !== Array) {
      possible_anagrams = possible_anagrams.split(" ");
    }

    for (i=0; i<possible_anagrams.length; i++) {
      console.log()
      possible_anagram = possible_anagrams[i].toLowerCase();

      if (word == possible_anagram) { break; }
       else if (word.length == possible_anagram.length){
        // If words are of same length
        for(j=0; j<word.length; j++) {
          word = word.toLowerCase();
          // master word on left, for each matching character, cut it out from word on the right.
          // anagram means on the right you'd be left with an empty array, all characters slashed out
          if (possible_anagram.indexOf(word[j]) != -1) {
            possible_anagram = possible_anagram.slice(0, possible_anagram.indexOf(word[j])) + possible_anagram.slice(possible_anagram.indexOf(word[j]) + 1);
          } else {
            break;
          }
        }

        if (possible_anagram.length == 0) {
          true_anagarams.push(possible_anagrams[i]);
        }
      }
    }

    return true_anagarams;
  };

  var public = {
    matches: find_anagrams
  };

  return public;

};

module.exports = anagram;
