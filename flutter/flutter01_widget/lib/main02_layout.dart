import 'package:flutter/material.dart';
/*
  * layout
    - Scaffold() : 화면을 top, body, bottom로 나누어짐
    - Row() : 위젯들을 가로로 배치
    - Column() : 위젯들을 세로로 배치
    * 
 */
void main() {
  runApp(const MyApp());
}

/* 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('앱제목'), backgroundColor: Color(0xff705e78),), // top 부분
        body: Text('본문 내용'),   // body : 필수
        bottomNavigationBar: BottomAppBar(child: Text('하단바')), // bottom 부분

      )
    );
  }
}
*/


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Row(
            // 메인 축 정렬
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // 메인의 반대축 정렬
            // crossAxisAlignment: CrossAxisAlignment.center, // 안 되는 이유는 icon의 높이 만큼만 자리 차지 하기 때문
              crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              Icon(Icons.eighteen_up_rating_outlined),
              Icon(Icons.twenty_one_mp_outlined),
              Icon(Icons.eighteen_mp_sharp)
            ]
          )
      ),
    );
  }
}





