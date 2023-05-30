import 'package:flutter/material.dart';
import 'package:stream_demo_project/all.demo/inheritedWidget/data.dart';
import 'package:stream_demo_project/all.demo/inheritedWidget/home.dart';
import 'package:stream_demo_project/all.demo/inheritedWidget/inherited_widget.dart';
import 'package:stream_demo_project/all.demo/keysDemo/KeyDemoWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Inherit(
      database: Data(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:ThemeData(primaryColor: Colors.tealAccent),
        home:const KeyDemoWidget() ,
      ),
    );
  }
}
