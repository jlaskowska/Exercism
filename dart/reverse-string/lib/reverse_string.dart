String reverse(String input) {
  return solution1(input);
}

String solution1(String input) {
  return String.fromCharCodes(input.runes.toList().reversed);
}

String solution2(String input) {
  return input.split('').reversed.join('');
}
