import 'package:flutter/material.dart';

/*
  * Widget
  - Material widget과 Cupertino widget
    : 위젯을 사용하려면 반드시 2개 중 하나를 사용해야 그 안에 있는 디자인을 기반으로 위젯이
      (미리 만들어 놓은 위젯들을 가져다 사용함. 컴포넌트(or 라이브러리)가 들어있다 생각하면 됨
      위젯들이 정상 작동하려면 반드시 넣어야 됨.
    1. Material widget : 안드로이드용 widget
    2. Cupertino widget : iPhone영 widget
    > flutter에서 안드로이드 폰을 만들어도 Cupertino widget 사용 가능. 서로 교차 사용 가능

    * 기본적으로 많이 사용하는 widget
      1. Text() : 글씨 넣기 -> Text('글씨')
      2. Image() : 이미지 넣기 -> Image.asset('이미지명')
      3. Icon() : 아이콘 넣기 -> Icon(Icons.??)
      4. Container : 박스 넣기
 */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 첫 번째 화면 설정. 기본적으로 앱이 시작되면 이 화면이 가장 먼저 보임
      // home: Text('글씨'),
      // home: Icon(Icons.star),

      // home: Image.asset('sea.jpg'), // 크롬에서 볼 때
      // home: Image.asset('assets/sea.jpg'), // 애뮬레이터에서 볼 때, 최신버전은 크롬, 애뮬 다 보임

      // home: Container(color: Colors.blueAccent,),
      // width, height가 안 되는 이유는 박스의 기준(어디를 기준으로 width: 50, height: 50를 넣어야 되는지)이 없기 때문
      // home: Container(width: 50, height: 50, color: Colors.blueAccent,),

      // alt + enter : Wrap Center를 넣는다
      // home: Center(child: Container(width: 50, height: 50, color: Colors.blueAccent,)),

      home: Center(
        child: Container(
          child: Text('박스안의 글자 넣기'),
          width: 380,
          height: 100,
          color: Colors.teal,
        ),
      ),



    );
  }
}
