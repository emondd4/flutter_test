import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Common Matchers in Flutter Tests', () {
    test('Basic Matchers', () {
      expect(42, equals(42)); // Checks if values are equal
      expect(42, isNot(equals(41))); // Checks if values are NOT equal
      expect(null, isNull); // Checks if value is null
      expect(42, isNotNull); // Checks if value is NOT null
      expect(42, isA<int>()); // Checks if value is of type int
    });

    test('String Matchers', () {
      expect('Flutter', contains('Flut')); // String contains
      expect('Flutter', startsWith('Flut')); // Starts with
      expect('Flutter', endsWith('ter')); // Ends with
      expect('Flutter', isNot(startsWith('Dart'))); // Does NOT start with
      expect('Flutter is fun', matches(RegExp(r'Flutter\s\w+\sfun'))); // Regex match
    });

    test('List Matchers', () {
      expect([1, 2, 3], contains(2)); // List contains 2
      expect([1, 2, 3], isNot(contains(4))); // List does NOT contain 4
      expect([1, 2, 3], equals([1, 2, 3])); // Lists are equal
      expect([1, 2, 3], isNot(equals([3, 2, 1]))); // Order matters
      expect([1, 2, 3], hasLength(3)); // Length check
      expect([1, 2, 3], everyElement(isA<int>())); // Every element is an int
    });

    test('Map Matchers', () {
      final myMap = {'name': 'Alice', 'age': 25};
      expect(myMap, contains('name')); // Map contains key
      expect(myMap, containsPair('name', 'Alice')); // Map contains key-value pair
      expect(myMap, isNot(containsPair('age', 30))); // Wrong value for key
      expect(myMap.keys, containsAll(['name', 'age'])); // Contains multiple keys
    });

    test('Exception Matchers', () {
      expect(() => throw Exception('Error'), throwsException); // Throws any exception
      expect(() => throw FormatException('Invalid format'), throwsFormatException); // Specific exception
      expect(() => throw ArgumentError('Wrong argument'), throwsA(isA<ArgumentError>())); // Type-based exception
    });

    test('Boolean & Logical Matchers', () {
      expect(true, isTrue); // Is true
      expect(false, isFalse); // Is false
      expect(42 > 10, isTrue); // Expression is true
    });

    test('Number Matchers', () {
      expect(10, greaterThan(5)); // Greater than
      expect(10, lessThan(20)); // Less than
      expect(10, greaterThanOrEqualTo(10)); // Greater than or equal
      expect(10, lessThanOrEqualTo(10)); // Less than or equal
      expect(10.5, closeTo(10, 1)); // 10.5 is within range 10±1
    });

    test('Iterable Matchers', () {
      final numbers = [1, 2, 3, 4, 5];
      expect(numbers, containsAll([2, 4])); // Contains multiple elements
      expect(numbers, orderedEquals([1, 2, 3, 4, 5])); // Exact order match
      expect(numbers, isNot(orderedEquals([5, 4, 3, 2, 1]))); // Wrong order
      expect(numbers, anyElement(greaterThan(3))); // At least one element > 3
    });
  });
}
