void main(){

}
// basic String init
void basicStringDeclaration(){
   print('Single quotes');
  final finalStr = 'Dart isn\'t loosely type';
// if special symbols in String => 'r'
  final rawString = r'Show esacpe \character';
  final doubleQuotesString = "Dart's popularity skyrocket with Flutter!";
  final mixAndMatch = 'Every "Hello World" should be there';
// multi line String => \n
  final multiLineString = 'One \nTwo \nThree';
  final anotherMultiLineString = ''' Be or not to be '''; }

// modern concat. String Interpolation
void modernConcatenations(){
  final year = 2011;
  final age = 30;
// $var => simple concat
  final interpolated = 'Dart was launched in $year .';
// $var{operator} => for interpolation with condition
  final interpolatedYears = 'Iam $age ${age==1 ? 'year':'years'} old.';
}

void strBufferExamples(){	StringBuilder
  List fruits = ['Mango','Banana','Pineapple','Apple'];
  StringBuffer buffer = StringBuffer();
for(String fruit in fruits){
  buffer.write(fruit);
  buffer.write(' ');
}
print(buffer.toString());
}