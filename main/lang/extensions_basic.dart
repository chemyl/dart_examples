void main() {
  String myName = 'Jack';
  print(myNmae.toBool());
}
// use extensions to expand any class you want
// add new methods to any String in program
extension StringExtensions on String {
  bool toBool() {
    return isNotEmpty;
  }
}