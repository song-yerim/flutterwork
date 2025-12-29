import 'package:flutter/material.dart';
// SizeBox() : 간단한 박스
//    - 속성 : width, height, child 3개만 있음.
//      > 많은 속성이 필요하면 Container 사용

// style() : 위젯에 대한 스타일 넣기

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
        appBar: AppBar(title: Text('예제'), backgroundColor: Color(0xe490cbfb),),
        body: SizedBox(
          // Text() 위젯에 스타일 넣어주기
          child: Text('안녕',
            style: TextStyle
              (color: Colors.lightGreen,
                fontSize: 50,
                fontWeight: FontWeight.bold)
          ),
        ),
      )
    );
  }
}
*/


// 아이콘 스타일
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('예제'), backgroundColor: Color(0xe490cbfb),),
        body: SizedBox(
          child: Icon(
              Icons.twenty_one_mp_outlined,
                  color: Colors.green,
                  size: 50, // 기본 사이즈는 24
          ),
          ),
        ),
    );
  }
}
*/

// 버튼
// - TextButton(), IconButton(), ElevateButton()
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('예제'), backgroundColor: Color(0xe490cbfb),),
        body: SizedBox(
          // child: TextButton(onPressed: (){}, child: Text('TextButton'),
          child: IconButton(onPressed: (){
            // 클릭 시 실행할 코드
          }, icon: Icon(
              Icons.twenty_two_mp_outlined,
             size: 50,
             color: Colors.green,
          ),
          ),
          // child: ElevatedButton(onPressed: (){}, child: Text('ElevatedButton')),
          ),
        ),
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
          appBar: AppBar(
            title: Text('예제'),
            backgroundColor: Color(0xff90cbfb),
          ),
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.all(Radius.circular(45))
              ),
              child: IconButton(
                  onPressed: (){
              }, icon: Icon(
                Icons.headphones_rounded,
                size: 70,
                color: Colors.blueAccent,
              ),
                  padding: EdgeInsets.all(15),
              ),
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

