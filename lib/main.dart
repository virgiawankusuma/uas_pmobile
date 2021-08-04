import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedCrossFade(
              firstChild: Container(
                width: 300,
                height: 300,
                color: Colors.black,
                child: Center(
                    child: Text(
                  'widget 1',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),
              ),
              secondChild: Container(
                width: 300,
                height: 300,
                color: Colors.yellow,
                child: Center(
                  child: Text('widget 2'),
                ),
              ),
              crossFadeState:
                  click ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(seconds: 2))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            click = !click;
          });
        },
      ),
    );
  }
}
