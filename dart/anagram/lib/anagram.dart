class Anagram {
  List<String> findAnagrams(String word, List<String> list) {
    List<String> anagram = [];
    if (word != null && word != '' && list.isNotEmpty) {
      for (var element in list) {
        if (isAnagram(word.toLowerCase(), element.toLowerCase())) {
          anagram.add(element);
        }
      }
    }
    return anagram;
  }

  bool isAnagram(String word1, String word2) {
    if (word1 != null &&
        word1.isNotEmpty &&
        word2 != null &&
        word2.isNotEmpty &&
        word1.length == word2.length &&
        word1 != word2) {
      final splitWord1 = word1.split('');
      final splitWord2 = word2.split('');

      for (var letter in splitWord1) {
        if (splitWord2.contains(letter)) {
          final foundLetter = splitWord2.firstWhere((element) => element == letter);
          splitWord2.remove(foundLetter);
        } else {
          return false;
        }
      }
      return true;
    }

    return false;
  }
}
