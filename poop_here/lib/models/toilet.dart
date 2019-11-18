class Toilet {
  int _id; // 데이터 베이스에서 필요
  ToiletType _type;
  bool _isBroken;

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  ToiletType get type => _type;

  bool get isBroken => _isBroken;

  set isBroken(bool value) {
    _isBroken = value;
  }

  set type(ToiletType value) {
    _type = value;
  }
}

enum ToiletType {
  STAND,
  SIT,
  SQUAT
}