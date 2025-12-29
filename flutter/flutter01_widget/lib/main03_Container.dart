import 'package:flutter/material.dart';

// container 정렬
// margin, padding, 정렬위젯(Align())
void main() {
  runApp(const MyApp());
}

/*
// margin, padding
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('예제'), backgroundColor: Color(0xff90cbfb),),
        body: Container(
          width: 100,
          height: 100,
          color: Colors.indigoAccent,
          // margin: EdgeInsets.all(20), // 전체 마진을 얼마나 줄지
          margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
          padding: EdgeInsets.all(20),
          child: Text('본문 박스에 글씨 넣기'),
        ),

        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home),
              Icon(Icons.camera_alt),
              Icon(Icons.person),
            ],
        )
        ),
      ),
    );
  }
}
 */

/*
// center로 body 한가운데 있기
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('예제'), backgroundColor: Color(0xff90cbfb),),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            child: Text('박스 안에 글자 넣기'),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.home),
          Icon(Icons.camera_alt),
          Icon(Icons.person),
            ],
          )
          ),
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
          appBar: AppBar(title: Text('예제'), backgroundColor: Color(0xff90cbfb),),
          body: Align(
            alignment: Alignment.center,
            child: Container(
              // width: 100,
              width: double.infinity, // 폭의 전체 자리 차지
              height: 100,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              child: Text('박스 안에 글자 넣기'),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home),
                  Icon(Icons.camera_alt),
                  Icon(Icons.person),
                ],
              )
          ),
        )
    );
  }
}
