void main() {

}

// classical switch Operator
String getDay(int day) {
  switch (day) {
    case 1:
      return 'Monday';
    case 2:
      return 'Tuesday';
    case 3:
      return 'Wednesday';
    default:
      return 'invalid day';
  }
}
// modern switch Expression
void modernSwitchExpression(int dayNum) {
  var myDay = switch(dayNum){
    1 => 'Monday',
    2 => 'Tuesday',
    3 => 'Wednesday',
    _ => 'invalid day'
  };
  print(myDay);
}

