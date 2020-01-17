class PhoneNumber {
  String clean(String number) {
    bool containsLetters = number.contains(RegExp(r'[A-Za-z]'));

    bool containsSpecialCharacters = number.contains(RegExp(r'[!@#$%^&*:;?|]'));

    number = number.replaceAll(RegExp(r'[^0-9]+'), '').split(' ').join('');

    if (number.length == 11 && !number.startsWith('1')) {
      return throw FormatException('11 digits must start with 1');
    } else if (number.length == 11 && number.startsWith('1') && number.substring(1).startsWith('0')) {
      return throw FormatException('area code cannot start with zero');
    } else if (number.length == 11 && number.startsWith('1') && number.substring(1).startsWith('1')) {
      return throw FormatException('area code cannot start with one');
    } else if (number.length == 11 && number.startsWith('1') && number.substring(4).startsWith('0')) {
      return throw FormatException('exchange code cannot start with zero');
    } else if (number.length == 11 && number.startsWith('1') && number.substring(4).startsWith('1')) {
      return throw FormatException('exchange code cannot start with one');
    } else if (number.length == 11 && number.startsWith('1')) {
      number = number.replaceFirst(RegExp(r'1'), '');
    } else if (number.length == 10 && number.startsWith('0')) {
      return throw FormatException('area code cannot start with zero');
    } else if (number.length == 10 && number.startsWith('1')) {
      return throw FormatException('area code cannot start with one');
    } else if (number.length <= 9 && !containsSpecialCharacters && !containsLetters) {
      return throw FormatException('incorrect number of digits');
    } else if (number.length > 11) {
      return throw FormatException('more than 11 digits');
    } else if (number.length == 10 && number.substring(3).startsWith('0')) {
      return throw FormatException('exchange code cannot start with zero');
    } else if (number.length == 10 && number.substring(3).startsWith('1')) {
      return throw FormatException('exchange code cannot start with one');
    } else if (containsLetters) {
      return throw FormatException('letters not permitted');
    } else if (containsSpecialCharacters) {
      return throw FormatException('punctuations not permitted');
    }

    return number;
  }
}
