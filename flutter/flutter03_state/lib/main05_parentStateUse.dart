import 'package:flutter/material.dart';
/*
  * 자식이 부모의 state 변경하기
    1. 부모가 자식에게 보내기
    2. 자식은 부모가 보내준 변수 등록
    3. 자식이 사용
 */
void main() {
  runApp(
      MaterialApp(
          home: MyApp()
      )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name = ['이기쁨', '채규태', '이고잉', '송미영', '더조은'];
  // 0. 자식에게 보낼줄 변수 정의
  var num = 7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(context);
          showDialog(
              context: context,
              builder: (context) {
              // 1. 부모가 자식에게 보내기
                return CustomDialog(namestate : name);
              }
          );
        },
        child: Text(''),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xfff3edf7),
        leading: Icon(Icons.list),
        title: Text('주소록'),
        actions: [Icon(Icons.search), Icon(Icons.share)],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset('user_${index+1}.png'),
            title: Text(name[index]),
          );
        },
      ),
      bottomNavigationBar: CustomBottom(),
    );
  }
}

class CustomDialog extends StatelessWidget {
  // 2.  등록하기
  const CustomDialog({super.key, this.stateVar, this.namestate});
  final stateVar;
  final namestate;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(),
            // 3. 사용하기
            // Text(namestate[1]),
            Text(namestate.toString()),
            TextButton(onPressed: (){}, child: Text(namestate.toString())),
            TextButton(onPressed: (){ Navigator.pop(context); }, child: Text('취소'))
          ],
        ),
      ),
    );
  }
}


class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.phone),
          Icon(Icons.article_outlined),
          Icon(Icons.contacts)
        ],
      ),
    );
  }
}