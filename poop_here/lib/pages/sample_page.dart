import 'package:flutter/material.dart';
import 'package:poop_here/components/demo_component.dart';
import 'package:poop_here/models/rest_room.dart';

class SamplePage extends StatefulWidget {
  final RestRoom restRoom;

  const SamplePage({Key key, this.restRoom}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('예제 페이지')
      ),
      body: Container(
        // StatefulWidget 에 받아온 값들은 이렇게 widget.~~로 참조할 수 있다.
        // 그리고 아래의 컴포넌트의 경우(화장실 예제 컴포넌트) 여러번 사용될 수 있으므로 따로 분리하는게 좋다.
        child: Column(
          children: <Widget>[
            DemoComponent(restRoom: widget.restRoom,),
            DemoComponent(restRoom: widget.restRoom,)
          ],
        ),
      )
    );
  }
}
