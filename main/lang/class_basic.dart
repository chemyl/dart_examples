void main() {
  classPlayground();
}

class Name {
  final String first;
  final String last;
// .this allow automatically assign members in constuctor
  Name(this.first, this.last);

  @override
  String toString() {
    return '$first $last';
  }
}

class OfficialName extends Name {
// private variables starts with '_'
  String _title;

// invoke parent constructor by super();
  OfficialName(this._title, String first, String last) : super(first, last);

  @override
  String toString() {
    return '$_title. ${super.toString()}';
  }
}

void classPlayground() {
  final name = OfficialName('Mr', 'Clark', 'Kent');
  final message = name.toString();
  print(message);
}