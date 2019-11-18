class Review
{
  RestRoomType _type;
  String _title;
  String _content;
  double _starts;
  List<String> _images;

  // 생성자
  Review(this._type, this._title, this._content, this._starts, this._images);


  RestRoomType get type => _type;

  set type(RestRoomType value) {
    _type = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get content => _content;

  set content(String value) {
    _content = value;
  }

  double get starts => _starts;

  set starts(double value) {
    _starts = value;
  }

  List<String> get images => _images;

  set images(List<String> value) {
    _images = value;
  }
}


enum RestRoomType {
  MALE, FEMALE, DISABLED_MALE, DISABLED_FEMALE, MIXED
}