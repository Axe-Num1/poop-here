import 'package:poop_here/models/review.dart';

class RestRoom{
  int _id;
  String _address;
  String _name;
  List<Review> _review;
  double _starts;
  bool _isPublic;
  List<RestRoomInfo> _rooms;


  RestRoom.name(this._id, this._address, this._name, this._review, this._starts,
      this._isPublic, this._rooms);


  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get address => _address;

  List<RestRoomInfo> get rooms => _rooms;

  set rooms(List<RestRoomInfo> value) {
    _rooms = value;
  }

  bool get isPublic => _isPublic;

  set isPublic(bool value) {
    _isPublic = value;
  }

  double get starts => _starts;

  set starts(double value) {
    _starts = value;
  }

  List<Review> get review => _review;

  set review(List<Review> value) {
    _review = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  set address(String value) {
    _address = value;
  }

}