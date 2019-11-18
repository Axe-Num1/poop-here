import 'rest_room_info.dart';
import 'review.dart';

class RestRoom {
  int _id;
  String _address;
  String _name;
  List<Review> _review;
  double _stars;
  bool _isPublic;
  List<RestRoomInfo> _rooms;


  RestRoom({id, address, name, review, stars, isPublic, rooms})
    : _id = id,
      _name = name,
      _address = address,
      _review = review,
      _stars = stars,
      _isPublic = isPublic,
      _rooms = rooms;


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

  double get stars => _stars;

  set stars(double value) {
    _stars = value;
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