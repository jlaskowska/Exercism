class Bob {
  // Put your code here

  String response(String input) {
    input = input.trim();

    final letters = input.replaceAll(RegExp(r'[^A-Za-z]+'), '');
    final allCapitals = letters.isNotEmpty && letters == letters.toUpperCase();

    String answer = '';
    if (input.isEmpty || input == null || input == ' ') {
      answer = 'Fine. Be that way!';
    } else if (allCapitals && input.contains('?')) {
      answer = "Calm down, I know what I'm doing!";
    } else if (allCapitals) {
      answer = 'Whoa, chill out!';
    } else if (input.endsWith('?')) {
      answer = 'Sure.';
    } else {
      answer = 'Whatever.';
    }
    return answer;
  }
}
