import 'package:poop_here/models/dto/rest_room_save_dto.dart';
import 'package:poop_here/models/response.dart';
import 'package:poop_here/models/rest_room.dart';
import 'package:poop_here/network/network_manager.dart';

class NetworkManagerDummy implements NetworkManager {
  @override
  Future<Response<None>> deleteRestRoom(RestRoom restRoom) {
    // TODO: implement deleteRestRoom
    return null;
  }

  @override
  Future<Response<None>> deleteRestRoomById(int id) {
    // TODO: implement deleteRestRoomById
    return null;
  }

  @override
  Future<Response<List<RestRoom>>> getAllRestRooms() {
    // TODO: implement getAllRestRooms
    return null;
  }

  @override
  Future<Response<List<RestRoom>>> getNearByRestRooms(double lan, double lon) {
    // TODO: implement getNearByRestRooms
    return null;
  }

  @override
  Future<Response<RestRoom>> getRestRoomById(int id) {
    var response = Response<RestRoom>();
    response.status = 200;
    response.message = "성공적으로 조회했습니다.";
    response.data = RestRoom(id: 1, name: "대구소프트웨어고등학교 본관 1층", address: "대소공입니다.");

    // Future 는 비동기를 위한 개념이다.
    // 지금 바로 돌려주지 않고 미래에 돌려준라는 뜻을 가졌다고 생각하면 쉽다.
    // 아래의 경우 100 밀리초를 기다린 후 response를 돌려준다.
    return Future.delayed(Duration(microseconds: 100), () => response);
  }

  @override
  Future<Response<RestRoom>> modifyRestRoom(RestRoom restRoom) {
    // TODO: implement modifyRestRoom
    return null;
  }

  @override
  Future<Response<RestRoom>> saveRestRoom(RestRoomSaveDTO restRoom) {
    // TODO: implement saveRestRoom
    return null;
  }

}