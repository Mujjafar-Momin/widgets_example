import 'package:flutter/material.dart';
import 'package:stream_demo_project/all.demo/inheritedWidget/inherited_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Inherit.of(context)?.database;
    return Scaffold(
      appBar: AppBar(title: const Text('Inherited Widget demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data!.nameMethod()),
            Text(data!.phoneMethod()),
          ],
        ),
      ),
    );
  }
}
