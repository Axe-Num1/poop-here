class Fee{
  int _id;

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  int _fee;
  String _reason;

  int get fee => _fee;

  set fee(int value) {
    _fee = value;
  }

  String get reason => _reason;

  set reason(String value) {
    _reason = value;
  }
}