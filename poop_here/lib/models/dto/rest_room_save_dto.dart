import '../rest_room_info.dart';


// 화장실 정보를 저장할 때 쓰이는 DTO(Data Transfer Object) 예시
// 아이디, 리뷰, 별점은 저장할 때 전혀 필요없으므로 아래의 정보만 전달해준다.
class RestRoomSaveDTO {
  String _address;
  String _name;
  bool _isPublic;
  List<RestRoomInfo> _rooms;

  RestRoomSaveDTO({address, name, isPublic, rooms})
      : _name = name,
  _address = address,
  _isPublic = isPublic,
  _rooms = rooms;


  String get address => _address;

  List<RestRoomInfo> get rooms => _rooms;

  set rooms(List<RestRoomInfo> value) {
  _rooms = value;
  }

  bool get isPublic => _isPublic;

  set isPublic(bool value) {
  _isPublic = value;
  }

  String get name => _name;

  set name(String value) {
  _name = value;
  }

  set address(String value) {
  _address = value;
  }

}