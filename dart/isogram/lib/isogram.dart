class Isogram {
  bool isIsogram(String word) {
    bool isIsogram = false;

    if (word.isEmpty) {
      isIsogram = true;
    } else {
      word = word.toLowerCase();
      word = word.replaceAll(' ', '');
      word = word.replaceAll('-', '');

      isIsogram = isIsogramDoubleForLoops(word);
    }

    return isIsogram;
  }

  bool isIsogramSetList(String word) {
    List<String> wordAsList = word.split('');
    Set<String> wordAsSet = Set();
    wordAsSet.addAll(wordAsList);

    return wordAsSet.length == wordAsList.length;
  }

  bool isIsogramDoubleForLoops(String word) {
    for (int i = 0; i < word.length - 1; i++) {
      for (int j = i + 1; j < word.length; j++) {
        if (word[i] == word[j]) {
          return false;
        }
      }
    }

    return true;
  }
}
