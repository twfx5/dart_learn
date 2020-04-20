import 'package:flutter/material.dart';

void main() {
  // 这是一种注释
  /// 这也是一种注释
  /*
      这也是一种注释
  */

  /// Dart的变量
  // Dart是种强大的脚本语言，可以不预先申明变量的类型，会自动通过变量类型推断
  // 可以通过关键字var来申明变量，会自动推断变量的类型
  var myNum = 123;
  print(myNum);
  // 也可以直接申明变量的类型
  String str = "Hello World";
  print(str);

  /// Dart的常量：const和final，永远不改变的的量，与var变量不同
  // 常量 const 值不变，一开始就得赋值
  const int num = 2;
  const PI = 3.1415926;
  // PI = 3.14;  错误 常量不可以修改

  // 常量 final 可以一开始不赋值，只能赋值一次，final不仅有const编译时常量的特性，更重要的是运行时
  // final是惰性初始化，在第一次使用时才初始化
  final name = "Bob";
  final String myName = "Simon";

  final time = new DateTime.now();
  print(time); // 2020-04-20 11:07:02.820846

  //const time2 = new DateTime.now(); // 错误写法，final才是运行时常量

  /// Dart 定义数组集合List
  // 第一种方式
  var l1 = ['123','234','345'];
  print(l1); // [123, 234, 345]

  int length = l1.length;
  print(length); // 3

  var a1 = l1[0];
  print(a1); // 123 数组种第一个元素

  // 第二种方式
  var l2 = new List();
  l2.add("123");
  l2.add("234");
  l2.add("345");
  print(l2[1]); // 234

  // 定义List指定类型
  var l3 = new List<int>();
  l3.add(1);
  l3.add(2);

  /// Dart 定义Maps字典（类似json数据）
  // 第一种方式
  var person = {
    "name":"张三",
    "age":23,
    "work":["程序员","男人"]
  };
  print(person); // {name: 张三, age: 23, work: [程序员, 男人]}
  print(person['name']); // 张三
  print(person["name"]); // 张三

  // 第二种方式 new
  var p = new Map();
  p["name"] = "李四";
  p["age"] = 24;
  p["work"] = ["程序员","搬砖工"];
  print(p); // {name: 李四, age: 24, work: [程序员, 搬砖工]}
  print(p["work"]); // [程序员, 搬砖工]

  /// Dart类型判断，通过is关键词
  var strN = 1234;
  if(strN is String) {
    print("字符串");
  } else if(strN is int){
    print("int"); // 打印 int
  } else {
    print("其他类型");
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
