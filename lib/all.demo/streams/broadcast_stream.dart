import 'dart:async';

import 'package:flutter/material.dart';

class BroadCastStream extends StatefulWidget {
  const BroadCastStream({Key? key}) : super(key: key);

  @override
  State<BroadCastStream> createState() => _BroadCastStreamState();
}

class _BroadCastStreamState extends State<BroadCastStream> {
  StreamController<String> streamController = StreamController();
  TextEditingController textEditingController=TextEditingController();
  late Stream<String> dataStream;
@override
  void initState() {
    dataStream=streamController.stream.asBroadcastStream();
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Broadcast Stream Demo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<String>(
                stream: dataStream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text('Hello..! ${snapshot.data ?? ''}');
                  } else {
                    return const Text('Hello..!');
                  }
                }),
            StreamBuilder<String>(
                stream: dataStream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text('Hello..! ${snapshot.data ?? ''}');
                  } else {
                    return const Text('Hello..!');
                  }
                }),
            const SizedBox(height: 20,),
            SizedBox(
              width: 200,
              child: TextField(
                controller: textEditingController,
                decoration: const InputDecoration(hintText: 'Enter Your Name Here',border: InputBorder.none),
              ),
            ),

            const SizedBox(height: 20,),

            ElevatedButton(
              onPressed: () {
                streamController.add(textEditingController.text);
              },
              child: const Text('Done'),
            )
          ],
        ),
      ),
    );
  }
}
