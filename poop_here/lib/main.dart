import 'package:flutter/material.dart';
import 'package:poop_here/components/review_card.dart';
import 'package:poop_here/models/review.dart';
import 'package:poop_here/network/network_manager.dart';
import 'package:poop_here/network/network_manager_dummy.dart';

// void main() => runApp(MyApp());

void main() {
  runApp(MaterialApp(
    title: '어디싸? 여기싸!',
    home: Scaffold(
      appBar: AppBar(title: Text('어디싸? 여기싸!'),),
      body: MyApp(),
    ),
  ));
}

class LoadReviewCardUpperPart extends StatefulWidget {
  @override
  State createState() {
    return LoadReviewCardUpperPartState();
  }
}

class LoadReviewCardUpperPartState extends State<LoadReviewCardUpperPart> {
  String selected = 'https://catlas.gnu.ac.kr/wordpress/image/absence_08.jpg';

  @override
  Widget build(BuildContext context) {
    return Stack(
      /* children: <Widget>[
        SizedBox.expand(
          child: Image.network(
              selected,
              fit: BoxFit.fill
          ),
        ), */

      children: <Widget>[
        SizedBox(
          child: Image.network(
              selected,
              fit: BoxFit.fill
          ),
          width: 100,
          height: 100,
        ),

        Container(child:
        Align(
          child: Row(
            children: <Widget>[
              makeButton('기본 이미지', () =>
              selected =
              'https://catlas.gnu.ac.kr/wordpress/image/absence_08.jpg'),
              makeButton('기본 이미지2', () =>
              selected = 'https://st3.depositphotos.com/1767687/17621/v/1600/depositphotos_176214034-stock-illustration-default-avatar-profile-icon.jpg'),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
          alignment: Alignment.bottomCenter,
        ),
          padding: EdgeInsets.only(bottom: 50),
        ),
      ],
    );
  }

  Widget makeButton(String title, VoidCallback callback) {
    return RaisedButton(
      child: Text(title),
      onPressed: () {
        setState(() => callback());
      },
    );
  }
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


// Main_App
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '어디싸? 여기싸!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: '어디싸? 여기싸!', networkManager: NetworkManagerDummy(),),
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

  // 프로필 이미지
  String selected = 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Moon_Jae-in_%282017-10-01%29_cropped.jpg/250px-Moon_Jae-in_%282017-10-01%29_cropped.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*      appBar: AppBar(
        title: Text(widget.title),
      )*/
      body: Column(
        children: <Widget>[

          Padding(
            padding:  const EdgeInsets.only(top: 20.0),
          ),


          Row(
            children: <Widget>[
              // ListView로 위의 점수 위젯이랑 아래의 리뷰 위젯을 감싸면 됨.




              // 별점 카테고리
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(20.0)).add(BorderRadius.only(topRight: Radius.circular(20.0))),
                  color: Colors.redAccent,
                ),
              ),
              Padding(
                padding:  const EdgeInsets.only(right: 10.0),
              ),

              Expanded(

                child: ReviewCard(Review(RestRoomType.MALE, '여기 완전 별로', '완전 별로', 1.2, null)),
              )

            ],
          ),


          // 선 넣기
          Padding(
            padding:  const EdgeInsets.only(top: 20.0),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12))
            ),
          ),
          Padding(
            padding:  const EdgeInsets.only(bottom: 20.0),
          ),



          // 리뷰 1
          Row(
            children: <Widget>[

              // 프로필 사진
              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(selected)
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(150.0)),
                  //  color: Colors.redAccent,
                ),
              ),


              Column(
                children: <Widget>[
                  Text("리뷰 1 입니다."),
                  Text("아... 진짜 여기 든든하게 편안하게 다시 만드세요.")
                ],
              ),
            ],
          ),




          Padding(
            padding: const EdgeInsets.only(bottom: 10),
          ),


          
          // 리뷰 2
          Row(
            children: <Widget>[

              // 프로필 사진
              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Moon_Jae-in_%282017-10-01%29_cropped.jpg/250px-Moon_Jae-in_%282017-10-01%29_cropped.jpg')
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(150.0)),
                  //  color: Colors.redAccent,
                ),
              ),

              Column(
                children: <Widget>[
                  Text("리뷰 2 입니다."),
                  Text("아... 진짜 여기 든든하게 편안하게 다시 만드세요.")
                ],
              ),
            ],
          ),



          // 리뷰 3
          Row(
            children: <Widget>[

              // 프로필 사진
              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Moon_Jae-in_%282017-10-01%29_cropped.jpg/250px-Moon_Jae-in_%282017-10-01%29_cropped.jpg')
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(150.0)),
                  //  color: Colors.redAccent,
                ),
              ),

              Column(
                children: <Widget>[
                  Text("리뷰 3 입니다."),
                  Text("아... 진짜 여기 든든하게 편안하게 다시 만드세요.")
                ],
              ),
            ],
          ),


          // 리뷰 4
          Row(
            children: <Widget>[

              // 프로필 사진
              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Moon_Jae-in_%282017-10-01%29_cropped.jpg/250px-Moon_Jae-in_%282017-10-01%29_cropped.jpg')
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(150.0)),
                  //  color: Colors.redAccent,
                ),
              ),

              Column(
                children: <Widget>[
                  Text("리뷰 4 입니다."),
                  Text("여기 나라를 든든한 국밥처럼 따듯하게 만드세요\n여기 나라를 든든한 국밥처럼 따듯하게 만드세요\n여기 나라를 든든한 국밥처럼 따듯하게 만드세요\n")
                ],
              ),
            ],
          ),



        ],
      ),
    );
  }
}
