// Put your code here
Map<String, int> scoreMap = {
  'A': 1,
  'B': 3,
  'C': 3,
  'D': 2,
  'E': 1,
  'F': 4,
  'G': 2,
  'H': 4,
  'I': 1,
  'J': 8,
  'K': 5,
  'L': 1,
  'M': 3,
  'N': 1,
  'O': 1,
  'P': 3,
  'R': 1,
  'S': 1,
  'T': 1,
  'U': 1,
  'V': 4,
  'W': 4,
  'X': 8,
  'Y': 4,
  'Q': 10,
  'Z': 10,
};

int score(String word) {
  List<String> wordToList = word.split('');

  int totalScore = 0;

  for (String letter in wordToList) {
    String key = letter.toUpperCase();
    if (scoreMap.containsKey(key)) {
      totalScore += scoreMap[key];
    }
  }
  return totalScore;
}