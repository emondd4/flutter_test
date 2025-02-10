import 'package:test/test.dart';

class IsUppercase extends Matcher {
  @override
  bool matches(item, Map matchState) {
    if (item is! String) return false;
    return item == item.toUpperCase();
  }

  @override
  Description describe(Description description) =>
      description.add('a string that is fully uppercase');
}