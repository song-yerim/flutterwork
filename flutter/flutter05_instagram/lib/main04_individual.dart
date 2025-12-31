import 'package:flutter/material.dart';
import './style.dart' as style;

var theme;

/*
    스타일을 한곳에
    ThemeData() : 스타일을 모아놓음(<style></style> 와 같은 의미)
    - 같은 파일에 넣어도 되고 별도의 파일로 만들어 넣어도 됨
*/

void main() {
  runApp(MaterialApp(
      theme: style.theme,
    home: const MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
        actions: [
          Icon(Icons.star),
          IconButton(onPressed: (){}, icon: Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          Text('더조은 풀스택'),
          Text('flutter', style: Theme.of(context).textTheme.bodyLarge,),
          TextButton(onPressed: (){}, child: Text('Text Button')),
          ElevatedButton(onPressed: (){}, child: Text('Elevated Button'))
        ],
      ),
    );
  }
}

