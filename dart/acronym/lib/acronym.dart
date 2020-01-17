class Acronym {
  String abbreviate(String input) {
    if (input == null || input.isEmpty) {
      return null;
    } else {
      input = input.trim();
      input = input.replaceAll(RegExp(r"[^A-Za-z']"), ' ');
      input = input.replaceAll(RegExp(r"\s\s+"), ' '); //replace multiple spaces with a single space

      List<String> inputAsList = input.split(' ');

      String acronym = '';
      for (String string in inputAsList) {
        String firstLetterOfString = string.substring(0, 1).toUpperCase();
        acronym += firstLetterOfString;
      }

      return acronym;
    }
  }
}
