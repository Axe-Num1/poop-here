import 'package:flutter/material.dart';
import 'package:poop_here/models/rest_room.dart';

class DemoComponent extends StatelessWidget {
  final RestRoom restRoom;

  // 이거는 자동생성된 것. 위의 필드만 final로 정의하고 alt + Enter 로 빠른 오류 해결로 생성된 코드.
  const DemoComponent({Key key, this.restRoom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          Text(this.restRoom.name),
          Text(this.restRoom.address),
        ],
      )
    );
  }
}
