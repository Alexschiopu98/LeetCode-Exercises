/// 412. Fizz Buzz

void main() {
  print(Solution.fizzBuzz(5));
  print(Solution.fizzBuzzConcatenation(15));
}

class Solution {
  static List<String> fizzBuzz(int n) {
    final List<String> result = [];

    for (int i = 1; i <= n; i++) {
      if (i % 3 == 0 && i % 5 == 0) {
        result.add('FizzBuzz');
        continue;
      }
      if (i % 3 == 0) {
        result.add('Fizz');
        continue;
      }
      if (i % 5 == 0) {
        result.add('Buzz');
        continue;
      }
      result.add('$i');
    }
    return result;
  }

  static List<String> fizzBuzzConcatenation(int n) {
    final List<String> result = [];

    for (int i = 1; i <= n; i++) {
      final divisibleBy3 = i % 3 == 0;
      final divisibleBy5 = i % 5 == 0;

      final StringBuffer currentValue = StringBuffer();

      if (divisibleBy3) {
        currentValue.write('Fizz');
      }
      if (divisibleBy5) {
        currentValue.write('Buzz');
      }
      if (currentValue.isEmpty) {
        currentValue.write(i);
      }
      result.add(currentValue.toString());
    }
    return result;
  }
}
