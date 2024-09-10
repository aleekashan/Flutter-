import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Flutter Container'),
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              print('Clicked');
            },
            onDoubleTap: () {
              print('Double tapped');
            },
            onLongPress: () {
              print('Long pressed');
            },
            child: Container(
              width: 200,
              height: 200,
              color: Colors.amber,
              child: Center(
                  child: InkWell(
                    onTap:(){
                      print('Text here clicked');
                    },
                      onLongPress: (){
                      print('Text here long pressed');
                      },
                      onDoubleTap: (){
                      print('Text here Double tapped');
                      },
                      child: Text(
                "Text here",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
              ))),
            ),
          ),
        ));
  }
}
