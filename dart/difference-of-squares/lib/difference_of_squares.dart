import 'dart:math';

class DifferenceOfSquares {
  int squareOfSum(int number) {
    List<int> numberAsList = List<int>.generate(number, (i) => i + 1);

    int squareSum = numberAsList.reduce((a, b) => a + b);
    int squareSumRaisedtoPower = pow(squareSum, 2).toInt();

    return squareSumRaisedtoPower;
  }

  int sumOfSquare(int number) {
    List<int> numberAsList = List<int>.generate(number, (i) => i + 1);

    int sumOfSquares = 0;
    for (number in numberAsList) {
      sumOfSquares += pow(number, 2).toInt();
    }

    return sumOfSquares;
  }

  int differenceOfSquares(int number) {
    return squareOfSum(number) - sumOfSquare(number);
  }
}
