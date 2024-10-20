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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: Lesson3HomePage(),
    );
  }
}

class Lesson3HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return HomePageSate();
  }

// Widget build(BuildContext context) {
//   // TODO: implement build
//   // throw UnimplementedError();
//
// }
}

class HomePageSate extends State<Lesson3HomePage> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text('Tite AppBar'),
        //căn giữa
        centerTitle: true,
        //thêm màu
        // backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              //Lật ngược dưới lên trên
              // verticalDirection: VerticalDirection.up,
              // căn theo trục dọc
              mainAxisAlignment: MainAxisAlignment.center,
              // căn theo trục ngang
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Lesson 3 - HomePage'),
                Text('Số lần click vào nút'),
                Text('$counter',
                    style: Theme.of(context).textTheme.displaySmall),
                // Text('Lesson 3 - HomePage'),
                // Text('Lesson 3 - HomePage')
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(child: TextField()),
                    // Expanded(child: TextField()),
                    SizedBox(width: 16.0,),
                    Image.network(
                      'https://codefresher.vn/wp-content/uploads/2023/12/Banner-06-kh-Flutter.jpg',
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(width: 16.0,),
                    ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Nut da duoc bam!')));
                        },
                        child: Text('Click me!')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          // backgroundColor: Colors.blue,
          child: Icon(Icons.plus_one),
          onPressed: () {
            counter++;
            //khi gọi setState thì hàm build được gọi lại
            setState(() {});
          }),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void deactivate() {
    super.deactivate();
  }

// @override
// void didUpdateWidget(Widget oldWidget) {
//   super.didUpdateWidget(oldWidget);
// }
}
