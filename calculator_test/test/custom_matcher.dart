import 'package:calculator_test/CustomMatcher/IsUppercase.dart';
import 'package:test/test.dart';

void main() {
  test('Custom Matcher - IsUppercase', () {
    Matcher isUppercase = IsUppercase();
    expect('HELLO', isUppercase); // ✅ Passes
    expect('Hello', isNot(isUppercase)); // ✅ Passes (fails correctly)
    expect('123', isUppercase); // ✅ Passes (numbers are considered uppercase)
  });
}
