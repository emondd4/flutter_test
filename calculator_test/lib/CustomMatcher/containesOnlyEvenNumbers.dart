import 'package:test/test.dart';

class ContainsOnlyEvenNumbers extends Matcher {
  @override
  bool matches(item, Map matchState) {
    if (item is! List<int>) return false;
    return item.every((num) => num % 2 == 0);
  }

  @override
  Description describe(Description description) =>
      description.add('a list containing only even numbers');
}