import 'package:calculator_test/src/calculator.dart';
import 'package:test/test.dart';

void main(){

  setUpAll((){
    /// it will execute once before any tests run
  });

  setUp(() {
    /// it will execute before every run
  });

  tearDown(() {
    /// it will execute after every test
  });

  tearDownAll(() {
    /// it will execute once after all the tests run
  });
  
  test("the calculator returns 4 when adding 2 and 2", (){
    /// 1st Step: Setup -> Create The Calculator Object
    final calculator = Calculator();

    /// 2nd Step: Side Effects -> Collect the result you want to test
    final result = calculator.add(2, 2);

    /// 3rd Step: Expectations -> Compare the result against an expected value
    expect(result, 4,);
  });

  test("the calculator returns 0 when subtract 2 and 2", (){
    /// 1st Step: Setup -> Create The Calculator Object
    final calculator = Calculator();

    /// 2nd Step: Side Effects -> Collect the result you want to test
    final result = calculator.subtract(2, 2);

    /// 3rd Step: Expectations -> Compare the result against an expected value
    expect(result, 0);
  });

  test("the calculator returns 4 when multiplying 2 and 2", (){
    /// 1st Step: Setup -> Create The Calculator Object
    final calculator = Calculator();

    /// 2nd Step: Side Effects -> Collect the result you want to test
    final result = calculator.multiply(2, 2);

    /// 3rd Step: Expectations -> Compare the result against an expected value
    expect(result, 4);
  });

  test("the calculator returns 1 when dividing 2 and 2", (){
    /// 1st Step: Setup -> Create The Calculator Object
    final calculator = Calculator();

    /// 2nd Step: Side Effects -> Collect the result you want to test
    final result = calculator.divide(2, 2);

    /// 3rd Step: Expectations -> Compare the result against an expected value
    expect(result, 1);
  });
  
}