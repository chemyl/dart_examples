void main() {
  /**
   *  String basic methods
   */
  assert(42.toString() == '42');
  assert(123.456.toString() == '123.456');
  assert(123.456.toStringAsFixed(2) == '123.46')

  assert('Never odd or even'.contains('odd'));
  assert('Never odd or even'.startsWith('Never'));
  assert('Never odd or even'.endsWith('even'));
  assert('Never odd or even'.indexOf('odd') == 6);

  assert('Never odd or even'.substring(6, 9) == 'odd');

  var parts = 'progressive web apps'.split(' ');
  assert(parts.length == 3);
  assert(parts[0] == 'progressive');

// a list of all characters (as Strings)
  for (final char in 'hello'.split('')) {
    print(char);
  }

  assert('web apps'.toUpperCase() == 'WEB APPS');
  assert('WEB APPS'.toLowerCase() == 'web apps');

  assert('  hello  '.trim() == 'hello');
  assert(''.isEmpty);
  assert('  '.isNotEmpty);

  var greetingTemplate = 'Hello, NAME!';
  var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Bob');
  assert(greeting != greetingTemplate);

  /**
   *  String initialization
   */

// basic String init
  void basicStringDeclaration() {
    print('Single quotes');
    final finalStr = 'Dart isn\'t loosely type';
// if special symbols in String => 'r'
    final rawString = r'Show esacpe \character';
    final doubleQuotesString = "Dart's popularity skyrocket with Flutter!";
    final mixAndMatch = 'Every "Hello World" should be there';
// multi line String => \n
    final multiLineString = 'One \nTwo \nThree';
    final anotherMultiLineString = ''' Be or not to be ''';
  }

  /**
   *  String Interpolation
   */
  void modernConcatenations() {
    final year = 2011;
    final age = 30;
    final interpolated = 'Dart was launched in $year .';
// $var{operator} => for interpolation with condition
    final interpolatedYears = 'Iam $age ${age == 1 ? 'year' : 'years'} old.';
  }

  /**
   *  String with REGEXP
   */

// Here's a regular expression for one or more digits.
  var numbers = RegExp(r'\d+');

  var allCharacters = 'llamas live fifteen to twenty years';
  var someDigits = 'llamas live 15 to 20 years';

// contains() with regexp.
  assert(!allCharacters.contains(numbers));
  assert(someDigits.contains(numbers));

// Replace every match with another string.
  var exedOut = someDigits.replaceAll(numbers, 'XX');
  assert(exedOut == 'llamas live XX to XX years');

  var numbers = RegExp(r'\d+');
  var someDigits = 'llamas live 15 to 20 years';

// Check whether the reg exp has a match in a string.
  assert(numbers.hasMatch(someDigits));

// Loop through all matches.
  for (final match in numbers.allMatches(someDigits)) {
    print(match.group(0)); // 15, then 20
  }

  /**
   *  StringBuffer sample
   */

  void strBufferExamples() {
    StringBuilder
    List fruits = ['Mango', 'Banana', 'Pineapple', 'Apple'];
    StringBuffer buffer = StringBuffer();

    for (String fruit in fruits) {
      buffer.write(fruit);
      buffer.write(' ');
    }
    print(buffer.toString());
  }
}