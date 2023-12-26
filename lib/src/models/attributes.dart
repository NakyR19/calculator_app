class Attributes {
  String _value = '';

  void applyCommand(String command) {
    if (command == 'AC') {
      _allClear();
    } else {
      _value += command;
    }
  }

  _allClear() {
    _value = '';
  }

  String get value {
    return _value;
  }
}