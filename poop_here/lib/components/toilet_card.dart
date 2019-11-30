import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poop_here/models/rest_room.dart';

class ToiletCard extends StatelessWidget {
  final RestRoom restRoom;

  ToiletCard({this.restRoom});

  @override
  Widget build(BuildContext context) {

    final testStyle = Theme.of(context).textTheme.button.copyWith();

    return Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://scontent-icn1-1.xx.fbcdn.net/v/t1.0-9/67409004_897636517265193_1991576266435723264_o.jpg?_nc_cat=111&_nc_ohc=TgpHWDjUXbMAQkq85NLYMhP09gKWFXDWiZJfwn32LYMyAY9oUAZQj738g&_nc_ht=scontent-icn1-1.xx&oh=9fa8d86cc3874ef269a94ea7e66fa518&oe=5E7516DF')
                ),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Colors.black26,
              ),
            ),
            Padding(padding: EdgeInsets.only(right: 10)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(this.restRoom.name,style: testStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
                  Padding(padding: EdgeInsets.only(bottom: 4)),
                  Text(this.restRoom.address),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text("ㄴㅇㄹㄴㄹㄴㅇ",style: testStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
                      Text("ㄴㅇㄹㅇ",style: testStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
                    ],
                  ),
                ],
              ),
            )

          ],
        )
    );
  }
}
