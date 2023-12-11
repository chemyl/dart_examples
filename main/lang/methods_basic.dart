void main(){
// short init for oneLine function.
  int getFour() => 4;   // As int getFour () { return 4; }

  classicalVoidFunc('Jack');
  classicalVoidFunc(classicalReturnFunc());

//can omit one or all parameters
  unnamed('james');

//specify param in any order
  namedOptional(age:3,name:'Samuel');

//specify times or will be default value
  print(duplicate('Tolik',times:2));
}

void classicalVoidFunc(String name){
  print('Hello my name is $name'); }

String classicalReturnFunc(){
  return 'Philipp'; }

// Optional Positional Parameters ([...])
// null-union operator => ?? When variable null, then take default value
void unnamed([String? name, int? age]){
  final myName = name ?? 'Micael';
  final int myAge = age ?? 14;
  print ('Hello my name is $myName and my age is $myAge');
}

// Named Optional Parameters ({...})
// invoke method with parameters in any order
void namedOptional({String? name, int? age}){
  final myName = name ?? 'Micael';
  final int myAge = age ?? 14;
  print ('Hello my name is $myName and my age is $myAge');
}

// String return func
// nullSafe => name
// default value => times
String duplicate(String? name, {int times = 1}){
  final merged = StringBuffer(name??'Jack');
  for (var i= 1; i < times; i++) {
    merged.write('$name');
  }
  return merged.toString();
}