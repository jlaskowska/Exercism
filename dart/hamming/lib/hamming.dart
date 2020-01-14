class Hamming {
  int distance(String string1, String string2) {
    if (string1 == null || string2 == null) {
      return null;
    }

    if (string1.isEmpty || string2.isEmpty) {
      return throw ArgumentError('no strand must be empty');
    }

    if (string1.length != string2.length) {
      return throw ArgumentError('left and right strands must be of equal length');
    }

    string1 = string1.toUpperCase();
    string2 = string2.toUpperCase();
    List<String> string1AsList = string1.split('');
    List<String> string2AsList = string2.split('');

    if (string1AsList.length != string2AsList.length) {
      return null;
    } else {
      int distance = 0;

      for (int i = 0; i < string1AsList.length; i++) {
        if (string1AsList[i] != string2AsList[i]) {
          distance++;
        }
      }

      return distance;
    }
  }
}
