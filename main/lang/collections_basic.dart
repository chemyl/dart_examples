void main() {

}

void listExamples() {
  final List<int> numbers = [1, 2, 3, 5, 7];
  numbers.add(11);
  numbers.addAll([8, 17, 35]);
  numbers[1] = 15;
  print('The second number is ${numbers[1]}');
// ForEach Loop
  for (int number in numbers) {
    print(number);
  }
}

void mapExamples() {
  final Map<String, int> ages = { 'Clark': 26, 'Peter': 35, 'Bruce': 44};
  final ageOfPeter = ages['Peter'];
  print('Peter is $ageOfPeter years old.');
  ages.remove('Peter');
// forEach Method
  ages.forEach((String name, int age) {
    print('$name is $age years old');
  });
}

void setExamples() {
  final Set<String> ministers = {
    'Justin',
    'Stephen',
    'Paul',
    'Jean',
    'Kim',
    'Brian'
  };
  ministers.addAll({
    'John',
    'Pierre',
    'Joe',
    'Pierre'
  }); //Pierre is a duplicate, which is not allowed in a set.
  final isJustinAMinister = ministers.contains('Justin');
  print(
      isJustinAMinister); // 'Pierre' will only be printed once // Duplicates are automatically rejected

  for (String primeMinister in ministers) {
    print('$primeMinister is a Prime Minister.');
  }
}