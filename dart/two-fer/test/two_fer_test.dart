import 'package:test/test.dart';
import 'package:two_fer/two_fer.dart';

void main() {
  group('TwoFer', () {
    test('no name given', () {
      final String result = twoFer();
      print(result);
      expect(result, equals('One for you, one for me.'));
    }, skip: false);

    test('a name given', () {
      final String result = twoFer('Alice');
      print(result);
      expect(result, equals('One for Alice, one for me.'));
    }, skip: false);

    test('another name given', () {
      final String result = twoFer('Bob');
      print(result);
      expect(result, equals('One for Bob, one for me.'));
    }, skip: false);
  });
}
