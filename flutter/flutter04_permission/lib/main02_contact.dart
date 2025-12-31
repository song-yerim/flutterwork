import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

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
  // 권한 얻어오기
  getPermission() async {
    var status = await Permission.contacts.request();
    if(status.isGranted) {
      print('허락됨');
      List<Contact> contacts = await FlutterContacts.getContacts(withProperties: true);
      print(contacts);
      print(contacts[0]);
      print(contacts[0].displayName); // contacts 0번의 이름 출력
      setState(() {
        name = contacts;
      });
    } else if(status.isDenied) {
      print('거절됨');
    } else if(status.isPermanentlyDenied) {
      print('영구 거절됨. 설정에서 직접 설정');
      openAppSettings();
    }
  }
  var name = []; // List<dynamic> 타입이 됨

  // 1. 함수 추가
  addName() async {
    var contacts = await FlutterContacts.getContacts(withProperties: true);
    setState(() {
      name = contacts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(context);
          showDialog(
              context: context,
              builder: (context) {
                return CustomDialog(addName:addName);
              }
          );
        },
        child: Text('Dialog'),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xfff3edf7),
        leading: Icon(Icons.list),
        title: Text('주소록'),
        actions: [IconButton(onPressed: (){getPermission();}, icon: Icon(Icons.co_present)),Icon(Icons.search), Icon(Icons.share)],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: name.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset('assets/user_${index+1}.png'),
            title: Text(name[index].displayName),
          );
        },
      ),
      bottomNavigationBar: CustomBottom(),
    );
  }
}

class CustomDialog extends StatelessWidget {
  /* const */ CustomDialog({super.key, this.addName});
  final addName;

  var inputData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(controller: inputData,),
            TextButton(onPressed: () async {
              Navigator.pop(context);
              var newContact = Contact();
              newContact.name.first = inputData.text; // 사용자로부터 받은 이름
              // 함수호출(newContact);
              await newContact.insert(); // 이름 추가
              await addName();
            }, child: Text('완료')),
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

