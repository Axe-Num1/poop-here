import 'package:flutter/material.dart';
import 'package:poop_here/network/network_manager.dart';
import 'package:poop_here/network/network_manager_dummy.dart';
import 'package:poop_here/pages/sample_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //
      //
      title: '어디싸? 여기싸!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '어디싸? 여기싸!', networkManager: NetworkManagerDummy(),),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  final NetworkManager networkManager;
  
  MyHomePage({Key key, this.title, this.networkManager}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FlatButton(
          child: Text('데모'),
          // 2. async 키워드는 await 키워드를 사용하기 위해 사용된다.
          onPressed: () async {
            // 1. await 키워드는 getRestRoomById가 돌려주는 Future가 값이 정말 들어올 때 까지 잠시 기다린다.
            // 이 키워드를 없애면 Future에 감싸진 데이터가 돌려와진다.
            var response = await widget.networkManager.getRestRoomById(1);

            // debugPrint 함수로 디버깅을 할 수 있다.
            debugPrint(response.data.name);

            // 만약 response 가 널이 아니고, status(상태코드)가 200(정상)이면,
            if (response != null && response.status == 200) {
              // 아래와 같이 페이지를 전환할 수 있다.
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SamplePage(restRoom: response.data,)),
              );
            }
          },
        ),
      ),
    );
  }
}
