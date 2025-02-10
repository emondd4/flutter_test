import 'package:calculator_test/CustomMatcher/containesOnlyEvenNumbers.dart';
import 'package:test/test.dart';

void main() {
  Matcher containsOnlyEvenNumbers() => ContainsOnlyEvenNumbers();
  test('Custom Matcher - Contains Only Even Numbers', () {
    expect([2, 4, 6, 8], containsOnlyEvenNumbers()); // ✅ Passes
    expect([2, 3, 6], isNot(containsOnlyEvenNumbers())); // ✅ Fails correctly
  });
}