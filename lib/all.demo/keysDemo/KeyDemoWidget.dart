import 'package:flutter/material.dart';
import 'package:stream_demo_project/all.demo/keysDemo/StatefulColorTile.dart';

class KeyDemoWidget extends StatefulWidget {
  const KeyDemoWidget({Key? key}) : super(key: key);

  @override
  State<KeyDemoWidget> createState() => _KeyDemoWidgetState();
}

class _KeyDemoWidgetState extends State<KeyDemoWidget> {
  List<Widget> tiles= [
    StatefulColorTile(tileColor: Colors.orangeAccent,key:UniqueKey()),
    StatefulColorTile(tileColor: Colors.yellowAccent,key:UniqueKey()),
    StatefulColorTile(tileColor: Colors.red,key:UniqueKey()),
    StatefulColorTile(tileColor: Colors.purple,key:UniqueKey()),
  ];
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Key Demo Widget'),),
      body: Column(
        children: [
          Row(
            children: [tiles[0],tiles[1]]
          ),
          Row(
              children: [tiles[2],tiles[3]]
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=>swapTile(),
                              child: const Icon(Icons.sentiment_very_satisfied,),
    ));
  }

  swapTile() {
    setState(() {
      tiles.insert(0,tiles.removeAt(1));
      tiles.insert(1,tiles.removeAt(2));
      tiles.insert(2,tiles.removeAt(3));
    });
  }
}
