import 'package:resistor_color_duo/resistor_color_duo.dart';
import 'package:test/test.dart';

void main() {
  final resistorColorDuo = new ResistorColorDuo();

  group('ResistorColorDuo', () {
    test("Too few input arguments", () {
      final int result = resistorColorDuo.value(["brown"]);
      expect(result, null);
    }, skip: false);

    test("Brown and black", () {
      final int result = resistorColorDuo.value(["brown", "black"]);
      expect(result, equals(10));
    }, skip: false);

    test("Blue and grey", () {
      final int result = resistorColorDuo.value(["blue", "grey"]);
      expect(result, equals(68));
    }, skip: false);

    test("Yellow and violet", () {
      final int result = resistorColorDuo.value(["yellow", "violet"]);
      expect(result, equals(47));
    }, skip: false);

    test("Orange and orange", () {
      final int result = resistorColorDuo.value(["orange", "orange"]);
      expect(result, equals(33));
    }, skip: false);

    test("Invalid colors", () {
      final int result = resistorColorDuo.value(["bla", "bla"]);
      expect(result, null);
    }, skip: false);
  });
}
