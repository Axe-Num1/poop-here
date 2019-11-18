import 'package:poop_here/models/dto/rest_room_save_dto.dart';
import 'package:poop_here/models/response.dart';
import 'package:poop_here/models/rest_room.dart';

abstract class NetworkManager {
  Future<Response<RestRoom>> getRestRoomById(int id);
  Future<Response<List<RestRoom>>> getAllRestRooms();
  Future<Response<List<RestRoom>>> getNearByRestRooms(double lan, double lon);  // 위도, 경도
  Future<Response<RestRoom>> saveRestRoom(RestRoomSaveDTO restRoom);
  Future<Response<RestRoom>> modifyRestRoom(RestRoom restRoom);
  Future<Response<None>> deleteRestRoom(RestRoom restRoom);
  Future<Response<None>> deleteRestRoomById(int id);


}