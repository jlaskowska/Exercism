class WordCount {
  Map<String, int> countWords(String phrase) {
    // format phrase
    phrase = phrase.trim();
    phrase = phrase.replaceAll(RegExp(r"[^A-Za-z0-9' ,]"), ''); // allow alphanumeric, ' space and ,
    phrase = phrase.replaceAll(RegExp(r'\s\s+'), ' '); // remove multiple whitespace
    phrase = phrase.toLowerCase();

    // split phrase into a list of words
    List<String> phraseWords = phrase.split(RegExp(r', |,| '));
    phraseWords =
        phraseWords.map((p) => _removeQuotesAroundWord(p)).toList(); // must be possible instead with a fancy regexp...

    // create a map whose key is a unique word and value is repetition count
    Map<String, int> wordCount = {};
    for (String word in phraseWords) {
      if (!wordCount.containsKey(word)) {
        wordCount[word] = 1;
      } else {
        wordCount[word] += 1;
      }
    }

    return wordCount;
  }

  String _removeQuotesAroundWord(String word) {
    if (word.startsWith('\'') && word.endsWith('\'')) {
      return word.substring(1, word.length - 1);
    }

    return word;
  }
}
