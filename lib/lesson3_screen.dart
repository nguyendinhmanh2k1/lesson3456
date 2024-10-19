import 'package:flutter/material.dart';

void main() {
  runApp(MyAppForLesson3());
}

class MyAppForLesson3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    var counter = 1;

    return MaterialApp(
      home: Lesson3HomePage(),
    );
  }
}

class Lesson3HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text('Tite AppBar'),
        //căn giữa
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          // căn theo trục dọc
          mainAxisAlignment: MainAxisAlignment.center,
          // căn theo trục ngang
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Lesson 3 - HomePage'),
            Text('Lesson 3 - HomePage'),
            Text('Lesson 3 - HomePage'),
            Text('Lesson 3 - HomePage'),
            Text('Lesson 3 - HomePage')
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.plus_one), onPressed: () {}),
    );
  }
}
