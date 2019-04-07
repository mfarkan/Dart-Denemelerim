class Door extends Stuff {
  String _color;
  DateTime _madeDateTime;
  String _madeOf;
  int _width;
  int _height;

  String get Color => _color;
  set Color(String value) => _color = value;

  DateTime get MadeDateTime => _madeDateTime;
  set MadeDateTime(DateTime value) => _madeDateTime = value;

  String get MadeOf => _madeOf;
  set MadeOf(String value) => _madeOf = value;

  int get Width => _width;
  set Width(int value) => _width = value;

  int get Height => _height;
  set Height(int value) => _height = value;

  Door(this._color, this._madeDateTime, this._madeOf, this._width,
      this._height) {}

  ///opening the door.
  void open() {
    print('This will be open');
  }

  ///closing the door.
  void close() {
    print('this will be close');
  }
}

class Stuff implements Matter {
  num _price;
  String _tradeMark;

  set Price(num value) => _price = value;
  int get Price => _price;

  set TradeMark(String value) => _tradeMark = value;
  String get TradeMark => _tradeMark;
  num getPrice() {
    return _price;
  }

  String getTradeMark() {
    return _tradeMark;
  }

  bool isColorful(bool value) {
    if (value) {
      return true;
    }
    return value;
  }
}

abstract class Matter {
  num getPrice();
  String getTradeMark();
  bool isColorful(bool value);
}
