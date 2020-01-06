class Leap {
  bool leapYear(int year) {
    bool isLeapYear = false;

    bool yearEvenlyDivisibleBy4 = (year % 4 == 0);
    bool yearEvenlyDivisibleBy100 = (year % 100 == 0);
    bool yearEvenlyDivisibleBy400 = (year % 400 == 0);

    if (yearEvenlyDivisibleBy4 == true && (yearEvenlyDivisibleBy100 == false && yearEvenlyDivisibleBy400 == false) ||
        (yearEvenlyDivisibleBy100 == true && yearEvenlyDivisibleBy400 == true)) {
      isLeapYear = true;
    }
    return isLeapYear;
  }
}
