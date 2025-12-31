import 'package:flutter/material.dart';

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
  var name = ['이기쁨', '채규태', '이고잉'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(context);
          showDialog(
              context: context,
              builder: (context) {
                return CustomDialog();
              }
          );
        },
        child: Text('Dialog'),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xfff3edf7),
        leading: Icon(Icons.list),
        title: Text('주소록'),
        actions: [Icon(Icons.search), Icon(Icons.share)],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: name.length,
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
  // 1. const 지우기
  /* const */ CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            /*
    // 3. 변수에 저장 (constroller : 변수명)  : 실시간 출력 안 됨
            TextField(controller: inputData),
            TextButton(onPressed: (){
                print(inputData.text);
              },
              child: Text('콘솔에 입력값 출력')
            ),
            */
    // 4. onChanged 사용하여 실시간 으로 출력 넣기
            // TextField(onChanged: (text){ print(text);}),

    // 5. onChanged 사용하여 실시간으로 변수에 저장하기
            TextField(),
            TextButton(onPressed: (){ }, child: Text('완료')),
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