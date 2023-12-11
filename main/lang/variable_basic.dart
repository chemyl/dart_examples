void main(){
}

void basicTypes(){
  int four = 4;
  print(four);
  double pi = 3.14;
  print(pi);
// num variable can contain int or Double
  num someNumber = 24566;
  print(someNumber);
  bool yes = true;
  print(yes);
// for nullSafety reason. when not initialize => put '?'
  int? nothing;
  print(nothing==null);
}

// dynamic variable may be any type and change in runtime
// .runtimeType return
void dynamicType(){
  dynamic something = 3.12;
  print(something.runtimeType);
  print(something);
  something = 'Jack';
  print(something.runtimeType);
}

// var variable. Dart determines the type by its initial value.
void varExamples(){
  var anInteger = 1234;
  print(anInteger);
  print(anInteger.runtimeType);
  var aDouble = 42.2;
  print(aDouble);
  print(aDouble.runtimeType);
  var aBoolean = true;
  print(aBoolean);
  print(aBoolean.runtimeType);
}

// final variable that cannot be reassigned but can be computed at runtime.
// const variable for values that are known at compile time.
void immutableVariables(){
  final int immutableInt = 4;
  print(immutableInt);
  final double immutableDouble= 3.55;
  final immIntNo = 15;
  print(immIntNo.runtimeType);
  const bolChecker = true;
  print(bolChecker);
  print(bolChecker.runtimeType);
}