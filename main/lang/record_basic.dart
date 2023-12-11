void main() {
// record => group different data in one type
  ({String name, int age}) person = (name: 'Clark', age: 42);
  print(person.name)

// this is Pattern, because it transforms the entry into two new variables => name and age
  var (String name, int age) = getPerson({'name': 'Clark', 'age': 42});
  print('$name is $age years old.');
}

// method returns a record of Type of (String and int)
(String, int) getPerson(Map<String, dynamic> data) {
  return (data['name'] as String, data['age'] as int);
}