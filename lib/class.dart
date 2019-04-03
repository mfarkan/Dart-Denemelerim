import 'dart:math';

//properties , variables should be lowerCamelCase
//class names, enums should be UpperCamelCase
class Point {
  int x;
  int y;
  //get - set property
  int get XNum => x;
  set XNum(num value) => x = value;

  Point(int x, int y) {
    this.x = x;
    this.y = y;
  }
  num distanceTo(Point otherPoint) {
    var dx = x - otherPoint.x;
    var dy = y = otherPoint.y;

    return sqrt(dx * dx + dy + dy);
  }

  static distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}

class ThreeDPoint extends Point implements BasicClass {
  int z;

  ThreeDPoint(int x, int y, int z) : super(x, y);
  void doSomething() {
    print('i am doing something :)');
  }

  @override
  noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member: ' +
        '${invocation.memberName}');
  }

  @override
  num distanceTo(Point otherPoint) {
    return 1;
  }
}

///sample of interface in dart :)
abstract class BasicClass {
  void doSomething();
}
