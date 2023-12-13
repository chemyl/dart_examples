import 'package:flutter_test/flutter_test.dart';
import 'package:project/main.dart';

void main() {
  test('Is Even', () {
    // test isEven() function
    bool result = isEven(12);
    expect(result, true);
  });
  test('Is Odd', () {
    bool result = isEven(123);
    expect(result, false);
  });

  group('Is Even group', () {
    test('Is Even', () {
      bool result = isEven(12);
      expect(result, true);
    });
    test('Is Odd', () {
      bool result = isEven(123);
      expect(result, true);
    });
  });
}