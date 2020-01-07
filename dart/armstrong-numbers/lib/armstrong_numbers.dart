import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    List<String> numberAsListString = number.toString().split('');
    int numberOfDigits = numberAsListString.length;
    int digit = 0;
    int sum = 0;
    bool isAmstrongNumber = false;
    int digitRaisedToPower = 0;

    for (int i = 0; i <= numberOfDigits - 1; i++) {
      digit = int.parse(numberAsListString[i]);
      digitRaisedToPower = pow(digit, numberOfDigits).toInt();
      sum += digitRaisedToPower;
    }

    if (number == sum) {
      isAmstrongNumber = true;
    }
    return isAmstrongNumber;
  }
}
