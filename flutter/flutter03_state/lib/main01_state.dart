import 'package:flutter/material.dart';
/*
    state (변수)
    - 일반 변수와 다른 점 : 변경이 되면 재렌더링해줌
    - state를 쓰려면 StatefulWidget 안에서 사용
 */
void main() {
  runApp( MyApp());
}

/*
class MyApp extends StatelessWidget {
  MyApp({super.key});
  // const로 만들어진 위젯의 모든 필드는 final이어야 됨
  // final num = 1;
  // 아니면 const를 빼고, 일반 변수를 만들던지
  var num = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              print(num);   // 콘솔은 숫자 증가
              num++;
            },
            child: Text(num.toString()), // 숫자 증가 안 함. 재렌더링
            ),
          appBar: AppBar(
            backgroundColor: Color(0xfff3edf7),
            leading: Icon(Icons.list),
            title: Text('주소록'),
            actions: [Icon(Icons.search), Icon(Icons.share)],
            ),
          body: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: 5, // 반복 횟수
              itemBuilder: (context, index) {
                // return Text('반복됨');
                // return Text(index.toString()); // Text() 문자만 가능. 숫자 -> 문자로 변환해야 함
                // return Text('반복횟수 : ' + index.toString());
                // return Text('반복횟수 : $index');
                return ListTile(
                    leading: Image.asset('image1.jpg'),
                    title: Text('친구 $index')
                );
              }
          ),
          bottomNavigationBar: CustomButtom()
      ),

    );
  }
}
*/

// state 사용 -> stful로 자동 생성하면 StatefulWidget() 생성됨
// 재렌더링이 필요한 값은 setState(){} 안에 넣으면 됨.
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() { // 계속 변경되는 부분 넣기
                num++;
              });
            },
            child: Text(num.toString(), style: TextStyle(fontSize: 20)),
        ),
          appBar: AppBar(
            backgroundColor: Color(0xfff3edf7),
            leading: Icon(Icons.list),
            title: Text('주소록'),
            actions: [Icon(Icons.search), Icon(Icons.share)],
          ),
          body: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: 5, // 반복 횟수
              itemBuilder: (context, index) {
                // return Text('반복됨');
                // return Text(index.toString()); // Text() 문자만 가능. 숫자 -> 문자로 변환해야 함
                // return Text('반복횟수 : ' + index.toString());
                // return Text('반복횟수 : $index');
                return ListTile(
                    leading: Image.asset('image1.jpg'),
                    title: Text('친구 $index')
                );
              }
          ),
          bottomNavigationBar: CustomButtom()
      ),

    );
  }
}
class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.home),
          Icon(Icons.camera_alt),
          Icon(Icons.person)
        ],
      ),
    );
  }
}

