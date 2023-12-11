void main(){
  consumeClosure();
}

void callBackExample(void Function(String value) backFunc){
  backFunc('Hello Callback');
}

void printSomething(String value){
  print(value);
}

// init callback Function by typedef
  typedef Something = int Function();

int powerOfTwo(Something getter){
  return getter()*getter();
}

void consumeClosure(){
  int getFive() => 5;
  final squared = powerOfTwo(getFive);
  print(squared);
  callBackExample(printSomething);
}