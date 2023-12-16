void main() {


  /**
   *  LIST
   */

  // This list should contain only strings.
  var fruits = <String>[];
  fruits.add('apples');
  var fruit = fruits[0];
  assert(fruit is String);

// Create an empty list of strings.
  var grains = <String>[];
  assert(grains.isEmpty);

// Create a list using a list literal.
  var fruits = ['apples', 'oranges'];

// Add to a list.
  fruits.add('kiwis');

// Add multiple items to a list.
  fruits.addAll(['grapes', 'bananas']);

// Get the list length.
  assert(fruits.length == 5);

// Remove a single item.
  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex);
  assert(fruits.length == 4);

// Remove all elements from a list.
  fruits.clear();
  assert(fruits.isEmpty);

// You can also create a List using one of the constructors.
  var vegetables = List.filled(99, 'broccoli');
  assert(vegetables.every((v) => v == 'broccoli'));

  var fruits = ['apples', 'oranges'];

// Access a list item by index.
  assert(fruits[0] == 'apples');

// Find an item in a list.
  assert(fruits.indexOf('apples') == 0);

  var fruits = ['bananas', 'apples', 'oranges'];

// Sort a list.
  fruits.sort((a, b) => a.compareTo(b));
  assert(fruits[0] == 'apples');

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

  /**
   *  MAP
   */

  // Maps often use strings as keys.
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

// Maps can be built from a constructor.
  var searchTerms = Map();

// Maps are parameterized types; you can specify what
// types the key and value should be.
  var nobleGases = Map<int, String>();

  var nobleGases = {54: 'xenon'};

// Retrieve a value with a key.
  assert(nobleGases[54] == 'xenon');

// Check whether a map contains a key.
  assert(nobleGases.containsKey(54));

// Remove a key and its value.
  nobleGases.remove(54);
  assert(!nobleGases.containsKey(54));

  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

// Get all the keys as an unordered collection
// (an Iterable).
  var keys = hawaiianBeaches.keys;

  assert(keys.length == 3);
  assert(Set.from(keys).contains('Oahu'));

// Get all the values as an unordered collection
// (an Iterable of Lists).
  var values = hawaiianBeaches.values;
  assert(values.length == 3);
  assert(values.any((v) => v.contains('Waikiki')));

  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };
// To check whether a map contains a key, use containsKey().
  assert(hawaiianBeaches.containsKey('Oahu'));
  assert(!hawaiianBeaches.containsKey('Florida'));

// Use the putIfAbsent() method when you want to assign a value to a key if and only if the key does not already exist in a map
  var teamAssignments = <String, String>{};
  teamAssignments.putIfAbsent('Catcher', () => pickToughestKid());
  assert(teamAssignments['Catcher'] != null);


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

  /**
   *  SET
   */

  // Create an empty set of strings.
  var ingredients = <String>{};

// Add new items to it.
  ingredients.addAll(['gold', 'titanium', 'xenon']);
  assert(ingredients.length == 3);

// Adding a duplicate item has no effect.
  ingredients.add('gold');
  assert(ingredients.length == 3);

// Remove an item from a set.
  ingredients.remove('gold');
  assert(ingredients.length == 2);

// You can also create sets using
// one of the constructors.
  var atomicNumbers = Set.from([79, 22, 54]);

  var ingredients = Set<String>();
  ingredients.addAll(['gold', 'titanium', 'xenon']);

// Check whether an item is in the set.
  assert(ingredients.contains('titanium'));

// Check whether all the items are in the set.
  assert(ingredients.containsAll(['titanium', 'xenon']));

  for (String ingredient in ingredients) {
    print('$ingredient is a ingredient.');
  }

  var ingredients = Set<String>();
  ingredients.addAll(['gold', 'titanium', 'xenon']);

// Create the intersection of two sets.
  var nobleGases = Set.from(['xenon', 'argon']);
  var intersection = ingredients.intersection(nobleGases);
  assert(intersection.length == 1);
  assert(intersection.contains('xenon'));

  /**
   *  General LIST SET MAP Methods
   */
// Use isEmpty or isNotEmpty to check whether a list, set, or map has items:
  var coffees = <String>[];
  var teas = ['green', 'black', 'chamomile', 'earl grey'];
  assert(
  coffees.isEmpty);
  assert(teas.isNotEmpty);

// To apply a function to each item in a list, set, or map, you can use forEach():
  var teas = ['green', 'black', 'chamomile', 'earl grey'];
  teas.forEach((tea) => print('I drink $tea'));

// When you invoke forEach() on a map, your function must take two arguments (the key and value):
  hawaiianBeaches.forEach((k, v) {
    print('I want to visit $k and swim at $v');
    // I want to visit Oahu and swim at
    // [Waikiki, Kailua, Waimanalo], etc.
  });

// Iterables provide the map() method, which gives you all the results in a single object:
  var teas = ['green', 'black', 'chamomile', 'earl grey'];
  var loudTeas = teas.map((tea) => tea.toUpperCase());
  loudTeas.forEach(print);

// To force your function to be called immediately on each item, use map().toList() or map().toSet():
  var loudTeas = teas.map((tea) => tea.toUpperCase()).toList();

// Use Iterable’s where() method to get all the items that match a condition.
// Use Iterable’s any() and every() methods to check whether some or all items match a condition.

  var teas = ['green', 'black', 'chamomile', 'earl grey'];

// Chamomile is not caffeinated.
  bool isDecaffeinated(String teaName) => teaName == 'chamomile';

// Use where() to find only the items that return true
// from the provided function.
  var decaffeinatedTeas = teas.where((tea) => isDecaffeinated(tea));
// or teas.where(isDecaffeinated)

// Use any() to check whether at least one item in the
// collection satisfies a condition.
  assert(teas.any(isDecaffeinated));

// Use every() to check whether all the items in a
// collection satisfy a condition.
  assert(!teas.every(isDecaffeinated));
}