import 'package:flutter/material.dart';

/*
    스타일을 한곳에
    ThemeData() : 스타일을 모아놓음(<style></style> 와 같은 의미)
    - 같은 파일에 넣어도 되고 별도의 파일로 만들어 넣어도 됨
*/

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      iconTheme: IconThemeData(color: Colors.blueGrey),
      appBarTheme: AppBarTheme(
          color:Colors.grey,
          actionsIconTheme : IconThemeData(color: Colors.blueGrey)
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(color: Colors.indigo, fontSize: 30)
      ),
    ),
    home: const MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [Icon(Icons.search)],
      ),
      body: Column(
        children: [
          Icon(Icons.star),
          Text('안녕')
        ],
      ),
    );
  }
}
